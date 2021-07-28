// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedbackEventTearOff {
  const _$FeedbackEventTearOff();

  _Submit submit({required String feedback}) {
    return _Submit(
      feedback: feedback,
    );
  }
}

/// @nodoc
const $FeedbackEvent = _$FeedbackEventTearOff();

/// @nodoc
mixin _$FeedbackEvent {
  String get feedback => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String feedback) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String feedback)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedbackEventCopyWith<FeedbackEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackEventCopyWith<$Res> {
  factory $FeedbackEventCopyWith(
          FeedbackEvent value, $Res Function(FeedbackEvent) then) =
      _$FeedbackEventCopyWithImpl<$Res>;
  $Res call({String feedback});
}

/// @nodoc
class _$FeedbackEventCopyWithImpl<$Res>
    implements $FeedbackEventCopyWith<$Res> {
  _$FeedbackEventCopyWithImpl(this._value, this._then);

  final FeedbackEvent _value;
  // ignore: unused_field
  final $Res Function(FeedbackEvent) _then;

  @override
  $Res call({
    Object? feedback = freezed,
  }) {
    return _then(_value.copyWith(
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  @override
  $Res call({String feedback});
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$FeedbackEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;

  @override
  $Res call({
    Object? feedback = freezed,
  }) {
    return _then(_Submit(
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Submit implements _Submit {
  const _$_Submit({required this.feedback});

  @override
  final String feedback;

  @override
  String toString() {
    return 'FeedbackEvent.submit(feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submit &&
            (identical(other.feedback, feedback) ||
                const DeepCollectionEquality()
                    .equals(other.feedback, feedback)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(feedback);

  @JsonKey(ignore: true)
  @override
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String feedback) submit,
  }) {
    return submit(feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String feedback)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements FeedbackEvent {
  const factory _Submit({required String feedback}) = _$_Submit;

  @override
  String get feedback => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubmitCopyWith<_Submit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FeedbackStateTearOff {
  const _$FeedbackStateTearOff();

  _FeedbackState call(
      {required bool submitting,
      required Option<Either<Failure, Unit>> submitFeedbackOption}) {
    return _FeedbackState(
      submitting: submitting,
      submitFeedbackOption: submitFeedbackOption,
    );
  }
}

/// @nodoc
const $FeedbackState = _$FeedbackStateTearOff();

/// @nodoc
mixin _$FeedbackState {
  bool get submitting => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get submitFeedbackOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedbackStateCopyWith<FeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res>;
  $Res call(
      {bool submitting, Option<Either<Failure, Unit>> submitFeedbackOption});
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  final FeedbackState _value;
  // ignore: unused_field
  final $Res Function(FeedbackState) _then;

  @override
  $Res call({
    Object? submitting = freezed,
    Object? submitFeedbackOption = freezed,
  }) {
    return _then(_value.copyWith(
      submitting: submitting == freezed
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitFeedbackOption: submitFeedbackOption == freezed
          ? _value.submitFeedbackOption
          : submitFeedbackOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$FeedbackStateCopyWith<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  factory _$FeedbackStateCopyWith(
          _FeedbackState value, $Res Function(_FeedbackState) then) =
      __$FeedbackStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool submitting, Option<Either<Failure, Unit>> submitFeedbackOption});
}

/// @nodoc
class __$FeedbackStateCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res>
    implements _$FeedbackStateCopyWith<$Res> {
  __$FeedbackStateCopyWithImpl(
      _FeedbackState _value, $Res Function(_FeedbackState) _then)
      : super(_value, (v) => _then(v as _FeedbackState));

  @override
  _FeedbackState get _value => super._value as _FeedbackState;

  @override
  $Res call({
    Object? submitting = freezed,
    Object? submitFeedbackOption = freezed,
  }) {
    return _then(_FeedbackState(
      submitting: submitting == freezed
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitFeedbackOption: submitFeedbackOption == freezed
          ? _value.submitFeedbackOption
          : submitFeedbackOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_FeedbackState implements _FeedbackState {
  const _$_FeedbackState(
      {required this.submitting, required this.submitFeedbackOption});

  @override
  final bool submitting;
  @override
  final Option<Either<Failure, Unit>> submitFeedbackOption;

  @override
  String toString() {
    return 'FeedbackState(submitting: $submitting, submitFeedbackOption: $submitFeedbackOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedbackState &&
            (identical(other.submitting, submitting) ||
                const DeepCollectionEquality()
                    .equals(other.submitting, submitting)) &&
            (identical(other.submitFeedbackOption, submitFeedbackOption) ||
                const DeepCollectionEquality()
                    .equals(other.submitFeedbackOption, submitFeedbackOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(submitting) ^
      const DeepCollectionEquality().hash(submitFeedbackOption);

  @JsonKey(ignore: true)
  @override
  _$FeedbackStateCopyWith<_FeedbackState> get copyWith =>
      __$FeedbackStateCopyWithImpl<_FeedbackState>(this, _$identity);
}

abstract class _FeedbackState implements FeedbackState {
  const factory _FeedbackState(
          {required bool submitting,
          required Option<Either<Failure, Unit>> submitFeedbackOption}) =
      _$_FeedbackState;

  @override
  bool get submitting => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, Unit>> get submitFeedbackOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedbackStateCopyWith<_FeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}
