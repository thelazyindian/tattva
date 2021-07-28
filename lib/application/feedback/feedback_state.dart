part of 'feedback_bloc.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    required bool submitting,
    required Option<Either<Failure, Unit>> submitFeedbackOption,
  }) = _FeedbackState;

  factory FeedbackState.initial() => _FeedbackState(
        submitting: false,
        submitFeedbackOption: none(),
      );
}
