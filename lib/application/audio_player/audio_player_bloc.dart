import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tattva/domain/audio_player/media_state.dart';
import 'package:tattva/domain/audio_player/player_view.dart';
import 'package:tattva/domain/audio_player/queue_state.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/infrastructure/audio_player/audio_player_task.dart';

part 'audio_player_bloc.freezed.dart';
part 'audio_player_bloc.g.dart';
part 'audio_player_event.dart';
part 'audio_player_state.dart';

void _entrypoint() => AudioServiceBackground.run(() => AudioPlayerTask());

@lazySingleton
class AudioPlayerBloc extends HydratedBloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc() : super(AudioPlayerState.initial());

  StreamSubscription<QueueState?>? _queueSubscription;
  StreamSubscription<MediaState?>? _mediaSubscription;
  StreamSubscription<PlaybackState?>? _playbackSubscription;

  @override
  Stream<AudioPlayerState> mapEventToState(
    AudioPlayerEvent event,
  ) async* {
    yield* event.map(
      reset: (e) async* {
        yield AudioPlayerState.initial();
      },
      started: (_) async* {
        debugPrint('AudioPlayerBloc started');
        _queueSubscription?.cancel();
        _mediaSubscription?.cancel();
        _playbackSubscription?.cancel();
        _queueSubscription = queueStateStream.listen((event) {
          if (event.mediaItem != null) {
            add(AudioPlayerEvent.updateQueueState(event));
          }
        });
        _mediaSubscription = mediaStateStream.listen((event) {
          if (event.mediaItem != null) {
            add(AudioPlayerEvent.updateMediaState(event));
          }
        });
        _playbackSubscription =
            AudioService.playbackStateStream.listen((event) {
          add(AudioPlayerEvent.updatePlaybackState(event));
        });
        if (state.queueState != null &&
            (state.queueState!.queue?.isNotEmpty ?? true) &&
            state.queueState!.mediaItem != null) {
          AudioService.start(
            backgroundTaskEntrypoint: _entrypoint,
            androidStopForegroundOnPause: true,
            params: {
              'mediaItems':
                  state.queueState!.queue!.map((e) => e.toJson()).toList(),
              'index': state.queueState!.queue!.indexWhere(
                  (element) => element.id == state.queueState!.mediaItem!.id),
            },
          );
        }
      },
      none: (e) async* {
        yield state.copyWith(playerView: PlayerView.none());
      },
      collapse: (e) async* {
        yield state.copyWith(playerView: PlayerView.collapsed());
      },
      expand: (e) async* {
        yield state.copyWith(playerView: PlayerView.expanded());
      },
      updateQueueState: (e) async* {
        yield state.copyWith(queueState: e.queueState);
      },
      updateMediaState: (e) async* {
        yield state.copyWith(mediaState: e.mediaState);
      },
      updatePlaybackState: (e) async* {
        yield state.copyWith(playbackState: e.playbackState);
      },
      audioItemClicked: (e) async* {
        final audio = e.audios[e.idx];

        final mediaItems = e.audios.map((item) {
          final durations = item.durationInMins.toString().split('.');
          final minutes = int.parse(durations[0]);
          final seconds = int.parse(durations[1]);

          return MediaItem(
            id: item.audioFile.first.url,
            artUri: Uri.parse(item.thumbnail.first.url),
            duration: Duration(minutes: minutes, seconds: seconds),
            album: e.categoryName,
            title: item.name,
            extras: {
              'uid': item.id,
              'mediaArt': item.mediaArt,
              'link': item.link,
            },
          );
        }).toList();

        yield state.copyWith(
          queueState: QueueState(mediaItems, mediaItems[e.idx]),
          mediaState: MediaState(mediaItems[e.idx], Duration.zero),
          playerView: PlayerView.expanded(),
        );

        if (AudioService.connected) {
          if (AudioService.running) {
            debugPrint('updateQueue');
            AudioService.customAction(
              audio.audioFile.first.url,
              mediaItems.map((e) => e.toJson()).toList(),
            );
          } else {
            startAudioService(mediaItems, e.idx);
          }
        }
      },
      play: (e) async* {
        if (AudioService.connected) {
          if (AudioService.running) {
            AudioService.play();
          } else {
            final idx = state.queueState!.queue!.indexWhere((element) =>
                element.extras!['uid'] ==
                state.queueState!.mediaItem!.extras!['uid']);
            startAudioService(state.queueState!.queue!, idx);
          }
        }
      },
    );
  }

  Stream<QueueState> get queueStateStream =>
      Rx.combineLatest2<List<MediaItem>?, MediaItem?, QueueState>(
          AudioService.queueStream,
          AudioService.currentMediaItemStream,
          (queue, mediaItem) => QueueState(queue, mediaItem));

  Stream<MediaState> get mediaStateStream =>
      Rx.combineLatest2<MediaItem?, Duration, MediaState>(
          AudioService.currentMediaItemStream,
          AudioService.positionStream,
          (mediaItem, position) => MediaState(mediaItem, position));

  startAudioService(List<MediaItem> mediaItems, int index) {
    AudioService.start(
      backgroundTaskEntrypoint: _entrypoint,
      androidStopForegroundOnPause: true,
      params: {
        'mediaItems': mediaItems.map((e) => e.toJson()).toList(),
        'index': index,
      },
    )
        .then((value) => AudioService.play())
        .catchError((onError) => AudioService.stop());
  }

  @override
  Future<void> close() {
    _queueSubscription?.cancel();
    _mediaSubscription?.cancel();
    _playbackSubscription?.cancel();
    return super.close();
  }

  @override
  AudioPlayerState? fromJson(Map<String, dynamic> json) =>
      AudioPlayerState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AudioPlayerState state) => state.toJson();
}
