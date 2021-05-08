// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subscriptions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubscriptionsEventTearOff {
  const _$SubscriptionsEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SelectedSubscription selectedSubscription({required String id}) {
    return _SelectedSubscription(
      id: id,
    );
  }

  _PaymentSuccess paymentSuccess() {
    return const _PaymentSuccess();
  }

  _PaymentFailure paymentFailure() {
    return const _PaymentFailure();
  }

  _Subscribe subscribe() {
    return const _Subscribe();
  }
}

/// @nodoc
const $SubscriptionsEvent = _$SubscriptionsEventTearOff();

/// @nodoc
mixin _$SubscriptionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedSubscription,
    required TResult Function() paymentSuccess,
    required TResult Function() paymentFailure,
    required TResult Function() subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedSubscription,
    TResult Function()? paymentSuccess,
    TResult Function()? paymentFailure,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedSubscription value) selectedSubscription,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_Subscribe value) subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSubscription value)? selectedSubscription,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsEventCopyWith<$Res> {
  factory $SubscriptionsEventCopyWith(
          SubscriptionsEvent value, $Res Function(SubscriptionsEvent) then) =
      _$SubscriptionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionsEventCopyWithImpl<$Res>
    implements $SubscriptionsEventCopyWith<$Res> {
  _$SubscriptionsEventCopyWithImpl(this._value, this._then);

  final SubscriptionsEvent _value;
  // ignore: unused_field
  final $Res Function(SubscriptionsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SubscriptionsEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedSubscription,
    required TResult Function() paymentSuccess,
    required TResult Function() paymentFailure,
    required TResult Function() subscribe,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedSubscription,
    TResult Function()? paymentSuccess,
    TResult Function()? paymentFailure,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedSubscription value) selectedSubscription,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSubscription value)? selectedSubscription,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SubscriptionsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SelectedSubscriptionCopyWith<$Res> {
  factory _$SelectedSubscriptionCopyWith(_SelectedSubscription value,
          $Res Function(_SelectedSubscription) then) =
      __$SelectedSubscriptionCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$SelectedSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements _$SelectedSubscriptionCopyWith<$Res> {
  __$SelectedSubscriptionCopyWithImpl(
      _SelectedSubscription _value, $Res Function(_SelectedSubscription) _then)
      : super(_value, (v) => _then(v as _SelectedSubscription));

  @override
  _SelectedSubscription get _value => super._value as _SelectedSubscription;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SelectedSubscription(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SelectedSubscription
    with DiagnosticableTreeMixin
    implements _SelectedSubscription {
  const _$_SelectedSubscription({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionsEvent.selectedSubscription(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SubscriptionsEvent.selectedSubscription'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedSubscription &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SelectedSubscriptionCopyWith<_SelectedSubscription> get copyWith =>
      __$SelectedSubscriptionCopyWithImpl<_SelectedSubscription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedSubscription,
    required TResult Function() paymentSuccess,
    required TResult Function() paymentFailure,
    required TResult Function() subscribe,
  }) {
    return selectedSubscription(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedSubscription,
    TResult Function()? paymentSuccess,
    TResult Function()? paymentFailure,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (selectedSubscription != null) {
      return selectedSubscription(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedSubscription value) selectedSubscription,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return selectedSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSubscription value)? selectedSubscription,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (selectedSubscription != null) {
      return selectedSubscription(this);
    }
    return orElse();
  }
}

abstract class _SelectedSubscription implements SubscriptionsEvent {
  const factory _SelectedSubscription({required String id}) =
      _$_SelectedSubscription;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedSubscriptionCopyWith<_SelectedSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PaymentSuccessCopyWith<$Res> {
  factory _$PaymentSuccessCopyWith(
          _PaymentSuccess value, $Res Function(_PaymentSuccess) then) =
      __$PaymentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentSuccessCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements _$PaymentSuccessCopyWith<$Res> {
  __$PaymentSuccessCopyWithImpl(
      _PaymentSuccess _value, $Res Function(_PaymentSuccess) _then)
      : super(_value, (v) => _then(v as _PaymentSuccess));

  @override
  _PaymentSuccess get _value => super._value as _PaymentSuccess;
}

/// @nodoc
class _$_PaymentSuccess
    with DiagnosticableTreeMixin
    implements _PaymentSuccess {
  const _$_PaymentSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionsEvent.paymentSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionsEvent.paymentSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PaymentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedSubscription,
    required TResult Function() paymentSuccess,
    required TResult Function() paymentFailure,
    required TResult Function() subscribe,
  }) {
    return paymentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedSubscription,
    TResult Function()? paymentSuccess,
    TResult Function()? paymentFailure,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedSubscription value) selectedSubscription,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSubscription value)? selectedSubscription,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentSuccess implements SubscriptionsEvent {
  const factory _PaymentSuccess() = _$_PaymentSuccess;
}

/// @nodoc
abstract class _$PaymentFailureCopyWith<$Res> {
  factory _$PaymentFailureCopyWith(
          _PaymentFailure value, $Res Function(_PaymentFailure) then) =
      __$PaymentFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentFailureCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements _$PaymentFailureCopyWith<$Res> {
  __$PaymentFailureCopyWithImpl(
      _PaymentFailure _value, $Res Function(_PaymentFailure) _then)
      : super(_value, (v) => _then(v as _PaymentFailure));

  @override
  _PaymentFailure get _value => super._value as _PaymentFailure;
}

/// @nodoc
class _$_PaymentFailure
    with DiagnosticableTreeMixin
    implements _PaymentFailure {
  const _$_PaymentFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionsEvent.paymentFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionsEvent.paymentFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PaymentFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedSubscription,
    required TResult Function() paymentSuccess,
    required TResult Function() paymentFailure,
    required TResult Function() subscribe,
  }) {
    return paymentFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedSubscription,
    TResult Function()? paymentSuccess,
    TResult Function()? paymentFailure,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (paymentFailure != null) {
      return paymentFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedSubscription value) selectedSubscription,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return paymentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSubscription value)? selectedSubscription,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (paymentFailure != null) {
      return paymentFailure(this);
    }
    return orElse();
  }
}

abstract class _PaymentFailure implements SubscriptionsEvent {
  const factory _PaymentFailure() = _$_PaymentFailure;
}

/// @nodoc
abstract class _$SubscribeCopyWith<$Res> {
  factory _$SubscribeCopyWith(
          _Subscribe value, $Res Function(_Subscribe) then) =
      __$SubscribeCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubscribeCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements _$SubscribeCopyWith<$Res> {
  __$SubscribeCopyWithImpl(_Subscribe _value, $Res Function(_Subscribe) _then)
      : super(_value, (v) => _then(v as _Subscribe));

  @override
  _Subscribe get _value => super._value as _Subscribe;
}

/// @nodoc
class _$_Subscribe with DiagnosticableTreeMixin implements _Subscribe {
  const _$_Subscribe();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionsEvent.subscribe()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionsEvent.subscribe'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Subscribe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedSubscription,
    required TResult Function() paymentSuccess,
    required TResult Function() paymentFailure,
    required TResult Function() subscribe,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedSubscription,
    TResult Function()? paymentSuccess,
    TResult Function()? paymentFailure,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedSubscription value) selectedSubscription,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSubscription value)? selectedSubscription,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _Subscribe implements SubscriptionsEvent {
  const factory _Subscribe() = _$_Subscribe;
}

/// @nodoc
class _$SubscriptionsStateTearOff {
  const _$SubscriptionsStateTearOff();

  _SubscriptionsState call(
      {required Option<Either<Failure, List<Subscription>>> subscriptionsOption,
      required String activeSubscriptionId,
      required bool subscribing}) {
    return _SubscriptionsState(
      subscriptionsOption: subscriptionsOption,
      activeSubscriptionId: activeSubscriptionId,
      subscribing: subscribing,
    );
  }
}

/// @nodoc
const $SubscriptionsState = _$SubscriptionsStateTearOff();

/// @nodoc
mixin _$SubscriptionsState {
  Option<Either<Failure, List<Subscription>>> get subscriptionsOption =>
      throw _privateConstructorUsedError;
  String get activeSubscriptionId => throw _privateConstructorUsedError;
  bool get subscribing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionsStateCopyWith<SubscriptionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsStateCopyWith<$Res> {
  factory $SubscriptionsStateCopyWith(
          SubscriptionsState value, $Res Function(SubscriptionsState) then) =
      _$SubscriptionsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<Subscription>>> subscriptionsOption,
      String activeSubscriptionId,
      bool subscribing});
}

/// @nodoc
class _$SubscriptionsStateCopyWithImpl<$Res>
    implements $SubscriptionsStateCopyWith<$Res> {
  _$SubscriptionsStateCopyWithImpl(this._value, this._then);

  final SubscriptionsState _value;
  // ignore: unused_field
  final $Res Function(SubscriptionsState) _then;

  @override
  $Res call({
    Object? subscriptionsOption = freezed,
    Object? activeSubscriptionId = freezed,
    Object? subscribing = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptionsOption: subscriptionsOption == freezed
          ? _value.subscriptionsOption
          : subscriptionsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Subscription>>>,
      activeSubscriptionId: activeSubscriptionId == freezed
          ? _value.activeSubscriptionId
          : activeSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      subscribing: subscribing == freezed
          ? _value.subscribing
          : subscribing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionsStateCopyWith<$Res>
    implements $SubscriptionsStateCopyWith<$Res> {
  factory _$SubscriptionsStateCopyWith(
          _SubscriptionsState value, $Res Function(_SubscriptionsState) then) =
      __$SubscriptionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<Subscription>>> subscriptionsOption,
      String activeSubscriptionId,
      bool subscribing});
}

/// @nodoc
class __$SubscriptionsStateCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res>
    implements _$SubscriptionsStateCopyWith<$Res> {
  __$SubscriptionsStateCopyWithImpl(
      _SubscriptionsState _value, $Res Function(_SubscriptionsState) _then)
      : super(_value, (v) => _then(v as _SubscriptionsState));

  @override
  _SubscriptionsState get _value => super._value as _SubscriptionsState;

  @override
  $Res call({
    Object? subscriptionsOption = freezed,
    Object? activeSubscriptionId = freezed,
    Object? subscribing = freezed,
  }) {
    return _then(_SubscriptionsState(
      subscriptionsOption: subscriptionsOption == freezed
          ? _value.subscriptionsOption
          : subscriptionsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Subscription>>>,
      activeSubscriptionId: activeSubscriptionId == freezed
          ? _value.activeSubscriptionId
          : activeSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      subscribing: subscribing == freezed
          ? _value.subscribing
          : subscribing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_SubscriptionsState
    with DiagnosticableTreeMixin
    implements _SubscriptionsState {
  const _$_SubscriptionsState(
      {required this.subscriptionsOption,
      required this.activeSubscriptionId,
      required this.subscribing});

  @override
  final Option<Either<Failure, List<Subscription>>> subscriptionsOption;
  @override
  final String activeSubscriptionId;
  @override
  final bool subscribing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionsState(subscriptionsOption: $subscriptionsOption, activeSubscriptionId: $activeSubscriptionId, subscribing: $subscribing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionsState'))
      ..add(DiagnosticsProperty('subscriptionsOption', subscriptionsOption))
      ..add(DiagnosticsProperty('activeSubscriptionId', activeSubscriptionId))
      ..add(DiagnosticsProperty('subscribing', subscribing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscriptionsState &&
            (identical(other.subscriptionsOption, subscriptionsOption) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionsOption, subscriptionsOption)) &&
            (identical(other.activeSubscriptionId, activeSubscriptionId) ||
                const DeepCollectionEquality().equals(
                    other.activeSubscriptionId, activeSubscriptionId)) &&
            (identical(other.subscribing, subscribing) ||
                const DeepCollectionEquality()
                    .equals(other.subscribing, subscribing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscriptionsOption) ^
      const DeepCollectionEquality().hash(activeSubscriptionId) ^
      const DeepCollectionEquality().hash(subscribing);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionsStateCopyWith<_SubscriptionsState> get copyWith =>
      __$SubscriptionsStateCopyWithImpl<_SubscriptionsState>(this, _$identity);
}

abstract class _SubscriptionsState implements SubscriptionsState {
  const factory _SubscriptionsState(
      {required Option<Either<Failure, List<Subscription>>> subscriptionsOption,
      required String activeSubscriptionId,
      required bool subscribing}) = _$_SubscriptionsState;

  @override
  Option<Either<Failure, List<Subscription>>> get subscriptionsOption =>
      throw _privateConstructorUsedError;
  @override
  String get activeSubscriptionId => throw _privateConstructorUsedError;
  @override
  bool get subscribing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionsStateCopyWith<_SubscriptionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
