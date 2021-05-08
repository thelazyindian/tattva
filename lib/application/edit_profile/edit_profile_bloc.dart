import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/authentication/user.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/injection.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

@lazySingleton
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final IAuthFacade _authFacade;

  EditProfileBloc(this._authFacade) : super(EditProfileState.initial());

  @override
  Stream<EditProfileState> mapEventToState(
    EditProfileEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield EditProfileState.initial();
        final userOption = await getIt<IAuthFacade>().getUser();
        yield* userOption.fold(
          () async* {
            yield state.copyWith(
              updateProfileOption: optionOf(left(const Failure.serverError())),
              displayName: '',
            );
          },
          (sOrF) => sOrF.fold(
            (failure) async* {
              yield state.copyWith(
                updateProfileOption:
                    optionOf(left(const Failure.serverError())),
                displayName: '',
              );
            },
            (user) async* {
              yield state.copyWith(
                updateProfileOption: optionOf(right(user)),
                displayName: user.displayName,
              );
            },
          ),
        );
      },
      onNameChanged: (e) async* {
        yield state.copyWith(displayName: e.value);
      },
      updatedProfile: (e) async* {
        yield state.copyWith(updating: true);
        yield* state.updateProfileOption.fold(
          () async* {},
          (sOrF) => sOrF.fold(
            (l) async* {},
            (r) async* {
              final updateProfileResponse = await _authFacade.updateProfile(
                uid: r.uid!,
                displayName: state.displayName,
              );

              updateProfileResponse.fold(
                (l) => null,
                (r) => getIt<AuthenticationBloc>()
                    .add(AuthenticationEvent.updatedUser(user: r)),
              );
              yield state.copyWith(
                updating: false,
                updateProfileOption: optionOf(updateProfileResponse),
              );
            },
          ),
        );
      },
    );
  }
}
