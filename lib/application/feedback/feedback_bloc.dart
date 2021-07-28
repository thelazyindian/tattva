import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/feedback/i_feedback_facade.dart';
import 'package:tattva/injection.dart';

part 'feedback_bloc.freezed.dart';
part 'feedback_event.dart';
part 'feedback_state.dart';

@injectable
class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  final IFeedbackFacade _feedbackFacade;

  FeedbackBloc(this._feedbackFacade) : super(FeedbackState.initial());

  @override
  Stream<FeedbackState> mapEventToState(
    FeedbackEvent event,
  ) async* {
    yield* event.map(
      submit: (e) async* {
        yield state.copyWith(submitting: true);
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final response = await _feedbackFacade.sendFeedback(
          token: token,
          feedback: e.feedback,
        );
        yield state.copyWith(
          submitting: false,
          submitFeedbackOption: optionOf(response),
        );
      },
    );
  }
}
