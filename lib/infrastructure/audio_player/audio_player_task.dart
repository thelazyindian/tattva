import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerTask extends BackgroundAudioTask {
  final _audioPlayer = AudioPlayer();
  AudioProcessingState? _skipState;
  late StreamSubscription<PlaybackEvent> _playbackEventSubscription;
  late StreamSubscription<ProcessingState> _processingStateSubscription;
  late StreamSubscription<Duration?> _durationSubscription;
  late StreamSubscription<int?> _currentIndexSubscription;

  late List<MediaItem> queue;
  int? index;

  @override
  Future<void> onStart(Map<String, dynamic>? params) async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.music());
    final List<MediaItem> mediaItems = (params!['mediaItems'] as List)
        .map((e) => MediaItem.fromJson(e))
        .toList();
    queue = mediaItems;

    _currentIndexSubscription =
        _audioPlayer.currentIndexStream.listen((idx) async {
      index = idx;
      if (idx != null) {
        debugPrint('AUDIOPLAYER Durtaion ${_audioPlayer.duration}');
        AudioServiceBackground.setMediaItem(queue[idx]);
      }
    });

    _durationSubscription = _audioPlayer.durationStream.listen((event) {
      if (index != null) {
        AudioServiceBackground.setMediaItem(
            queue[index!].copyWith(duration: event));
      }
    });

    _playbackEventSubscription =
        _audioPlayer.playbackEventStream.listen((event) {
      debugPrint('playerStateStream $event');
      _broadcastState();
    });

    _processingStateSubscription =
        _audioPlayer.processingStateStream.listen((state) {
      switch (state) {
        case ProcessingState.completed:
          onStop();
          break;
        case ProcessingState.ready:
          _skipState = null;
          break;
        default:
          break;
      }
    });

    try {
      AudioServiceBackground.setQueue(mediaItems);
      await _audioPlayer.setAudioSource(
        ConcatenatingAudioSource(
          children: mediaItems
              .map((item) => AudioSource.uri(Uri.parse(item.id)))
              .toList(),
        ),
        initialIndex: params['index'],
      );
      onPlay();
    } catch (e) {
      print("Error: $e");
      onStop();
    }
  }

  Future<void> _broadcastState() => AudioServiceBackground.setState(
        controls: [
          MediaControl.skipToPrevious,
          if (_audioPlayer.playing) MediaControl.pause else MediaControl.play,
          MediaControl.skipToNext,
        ],
        processingState: _getProcessingState(),
        playing: _audioPlayer.playing,
        position: _audioPlayer.position,
        bufferedPosition: _audioPlayer.bufferedPosition,
      );

  AudioProcessingState _getProcessingState() {
    if (_skipState != null) return _skipState!;

    switch (_audioPlayer.processingState) {
      case ProcessingState.idle:
        return AudioProcessingState.stopped;
      case ProcessingState.loading:
        return AudioProcessingState.connecting;
      case ProcessingState.buffering:
        return AudioProcessingState.buffering;
      case ProcessingState.ready:
        return AudioProcessingState.ready;
      case ProcessingState.completed:
        return AudioProcessingState.completed;
      default:
        throw Exception("Invalid state: ${_audioPlayer.processingState}");
    }
  }

  @override
  Future<void> onSkipToQueueItem(String mediaUid) async {
    debugPrint('onSkipToQueueItem $mediaUid');
    final newIndex =
        queue.indexWhere((item) => item.extras!['uid'] == mediaUid);
    debugPrint('onSkipToQueueItem $newIndex');

    if (newIndex == -1) return;

    _skipState = newIndex > index!
        ? AudioProcessingState.skippingToNext
        : AudioProcessingState.skippingToPrevious;
    _audioPlayer.seek(Duration.zero, index: newIndex);
  }

  @override
  Future<void> onSkipToNext() => _skip(1);

  @override
  Future<void> onSkipToPrevious() => _skip(-1);

  Future<void> _skip(int offset) async {
    final mediaItem = AudioServiceBackground.mediaItem;
    if (mediaItem == null) return;
    final queue = AudioServiceBackground.queue ?? [];
    int i = queue.indexOf(mediaItem);
    if (i == -1) return;
    int newIndex = i + offset;
    if (newIndex >= 0 && newIndex < queue.length)
      await onSkipToQueueItem(queue[newIndex].extras!['uid']);
  }

  @override
  Future onCustomAction(String name, arguments) async {
    queue = (arguments as List).map((e) => MediaItem.fromJson(e)).toList();
    AudioServiceBackground.setQueue(queue);
    try {
      final idx = queue.indexWhere((element) => element.id == name);
      await _audioPlayer.setAudioSource(
        ConcatenatingAudioSource(
          children:
              queue.map((item) => AudioSource.uri(Uri.parse(item.id))).toList(),
        ),
        initialIndex: idx,
      );
      onPlay();
    } catch (e) {
      print("Error: $e");
      onStop();
    }
  }

  @override
  Future<void> onPlay() => _audioPlayer.play();

  @override
  Future<void> onSeekTo(Duration position) => _audioPlayer.seek(position);

  @override
  Future<void> onPause() => _audioPlayer.pause();

  @override
  Future<void> onStop() async {
    await _audioPlayer.dispose();
    _playbackEventSubscription.cancel();
    _processingStateSubscription.cancel();
    _durationSubscription.cancel();
    _currentIndexSubscription.cancel();
    await _broadcastState();
    return super.onStop();
  }
}
