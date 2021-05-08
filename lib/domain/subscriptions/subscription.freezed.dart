// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
class _$SubscriptionTearOff {
  const _$SubscriptionTearOff();

  _Subscription call(
      {required String id,
      required String name,
      required String description,
      required int amount}) {
    return _Subscription(
      id: id,
      name: name,
      description: description,
      amount: amount,
    );
  }

  Subscription fromJson(Map<String, Object> json) {
    return Subscription.fromJson(json);
  }
}

/// @nodoc
const $Subscription = _$SubscriptionTearOff();

/// @nodoc
mixin _$Subscription {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res>;
  $Res call({String id, String name, String description, int amount});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res> implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  final Subscription _value;
  // ignore: unused_field
  final $Res Function(Subscription) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(
          _Subscription value, $Res Function(_Subscription) then) =
      __$SubscriptionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description, int amount});
}

/// @nodoc
class __$SubscriptionCopyWithImpl<$Res> extends _$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(
      _Subscription _value, $Res Function(_Subscription) _then)
      : super(_value, (v) => _then(v as _Subscription));

  @override
  _Subscription get _value => super._value as _Subscription;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Subscription(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Subscription implements _Subscription {
  const _$_Subscription(
      {required this.id,
      required this.name,
      required this.description,
      required this.amount});

  factory _$_Subscription.fromJson(Map<String, dynamic> json) =>
      _$_$_SubscriptionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int amount;

  @override
  String toString() {
    return 'Subscription(id: $id, name: $name, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subscription &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscriptionToJson(this);
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription(
      {required String id,
      required String name,
      required String description,
      required int amount}) = _$_Subscription;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$_Subscription.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}
