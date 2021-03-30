import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';

class AudioPlayerTask extends BackgroundAudioTask {
  final _audioPlayer = AudioPlayer();
  AudioProcessingState? _skipState;
  late StreamSubscription<PlaybackEvent> _eventSubscription;
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
    _audioPlayer.currentIndexStream.listen((idx) async {
      index = idx;
      if (idx != null) {
        debugPrint('AUDIOPLAYER Durtaion ${_audioPlayer.duration}');
        AudioServiceBackground.setMediaItem(queue[idx]);
      }
    });

    _audioPlayer.durationStream.listen((event) {
      if (index != null) {
        AudioServiceBackground.setMediaItem(
            queue[index!].copyWith(duration: event));
      }
    });

    _eventSubscription = _audioPlayer.playbackEventStream.listen((event) {
      debugPrint('playerStateStream $event');

      _broadcastState();
    });

    _audioPlayer.processingStateStream.listen((state) {
      switch (state) {
        case ProcessingState.completed:
          // In this example, the service stops when reaching the end.
          onStop();
          break;
        case ProcessingState.ready:
          // If we just came from skipping between tracks, clear the skip
          // state now that we're ready to play.
          _skipState = null;
          break;
        default:
          break;
      }
    });

    AudioServiceBackground.setQueue(mediaItems);
    try {
      await _audioPlayer.setAudioSource(ConcatenatingAudioSource(
        children: mediaItems
            .map((item) => AudioSource.uri(Uri.parse(item.id)))
            .toList(),
      ));
      await _audioPlayer.seek(Duration.zero, index: params['index']);

      onPlay();
    } catch (e) {
      print("Error: $e");
      onStop();
    }
    // final duration = await _audioPlayer
    //     .setAudioSource(AudioSource.uri(Uri.parse(mediaItem.id)));
    // AudioServiceBackground.setMediaItem(mediaItem.copyWith(duration: duration));
    // _audioPlayer.play();
  }

  Future<void> _broadcastState() async {
    await AudioServiceBackground.setState(
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
  }

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
  Future<void> onSkipToQueueItem(String mediaId) async {
    // Then default implementations of onSkipToNext and onSkipToPrevious will
    // delegate to this method.
    debugPrint('onSkipToQueueItem $mediaId');
    final newIndex = queue.indexWhere((item) => item.id == mediaId);
    debugPrint('onSkipToQueueItem $newIndex');

    if (newIndex == -1) return;
    // During a skip, the player may enter the buffering state. We could just
    // propagate that state directly to AudioService clients but AudioService
    // has some more specific states we could use for skipping to next and
    // previous. This variable holds the preferred state to send instead of
    // buffering during a skip, and it is cleared as soon as the player exits
    // buffering (see the listener in onStart).
    _skipState = newIndex > index!
        ? AudioProcessingState.skippingToNext
        : AudioProcessingState.skippingToPrevious;
    _audioPlayer.seek(Duration.zero, index: newIndex);
  }

  @override
  Future<void> onSkipToNext() {
    return super.onSkipToNext();
  }

  @override
  Future<void> onSkipToPrevious() {
    return super.onSkipToPrevious();
  }

  @override
  Future onCustomAction(String name, arguments) async {
    queue = (arguments as List).map((e) => MediaItem.fromJson(e)).toList();
    AudioServiceBackground.setQueue(queue);
    try {
      final idx = queue.indexWhere((element) => element.id == name);
      _audioPlayer.setAudioSource(
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
  Future<void> onUpdateQueue(List<MediaItem> _queue) async {
    queue = _queue;
    AudioServiceBackground.setQueue(_queue);
    try {
      _audioPlayer.setAudioSource(ConcatenatingAudioSource(
        children:
            _queue.map((item) => AudioSource.uri(Uri.parse(item.id))).toList(),
      ));
      // onPlay();
    } catch (e) {
      print("Error: $e");
      onStop();
    }
  }

  @override
  Future<void> onPlay() async {
    _audioPlayer.play();
  }

  @override
  Future<void> onSeekTo(Duration position) async {
    _audioPlayer.seek(position);
  }

  @override
  Future<void> onPause() async {
    _audioPlayer.pause();
  }

  @override
  Future<void> onStop() async {
    await _audioPlayer.dispose();
    _eventSubscription.cancel();
    await _broadcastState();
    return super.onStop();
  }
}
