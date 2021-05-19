// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dynamic_links_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DynamicLinksStateTearOff {
  const _$DynamicLinksStateTearOff();

  _DynamicLinksState call({required Option<DynamicLinkType> linkType}) {
    return _DynamicLinksState(
      linkType: linkType,
    );
  }
}

/// @nodoc
const $DynamicLinksState = _$DynamicLinksStateTearOff();

/// @nodoc
mixin _$DynamicLinksState {
  Option<DynamicLinkType> get linkType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DynamicLinksStateCopyWith<DynamicLinksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicLinksStateCopyWith<$Res> {
  factory $DynamicLinksStateCopyWith(
          DynamicLinksState value, $Res Function(DynamicLinksState) then) =
      _$DynamicLinksStateCopyWithImpl<$Res>;
  $Res call({Option<DynamicLinkType> linkType});
}

/// @nodoc
class _$DynamicLinksStateCopyWithImpl<$Res>
    implements $DynamicLinksStateCopyWith<$Res> {
  _$DynamicLinksStateCopyWithImpl(this._value, this._then);

  final DynamicLinksState _value;
  // ignore: unused_field
  final $Res Function(DynamicLinksState) _then;

  @override
  $Res call({
    Object? linkType = freezed,
  }) {
    return _then(_value.copyWith(
      linkType: linkType == freezed
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as Option<DynamicLinkType>,
    ));
  }
}

/// @nodoc
abstract class _$DynamicLinksStateCopyWith<$Res>
    implements $DynamicLinksStateCopyWith<$Res> {
  factory _$DynamicLinksStateCopyWith(
          _DynamicLinksState value, $Res Function(_DynamicLinksState) then) =
      __$DynamicLinksStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<DynamicLinkType> linkType});
}

/// @nodoc
class __$DynamicLinksStateCopyWithImpl<$Res>
    extends _$DynamicLinksStateCopyWithImpl<$Res>
    implements _$DynamicLinksStateCopyWith<$Res> {
  __$DynamicLinksStateCopyWithImpl(
      _DynamicLinksState _value, $Res Function(_DynamicLinksState) _then)
      : super(_value, (v) => _then(v as _DynamicLinksState));

  @override
  _DynamicLinksState get _value => super._value as _DynamicLinksState;

  @override
  $Res call({
    Object? linkType = freezed,
  }) {
    return _then(_DynamicLinksState(
      linkType: linkType == freezed
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as Option<DynamicLinkType>,
    ));
  }
}

/// @nodoc
class _$_DynamicLinksState
    with DiagnosticableTreeMixin
    implements _DynamicLinksState {
  const _$_DynamicLinksState({required this.linkType});

  @override
  final Option<DynamicLinkType> linkType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicLinksState(linkType: $linkType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DynamicLinksState'))
      ..add(DiagnosticsProperty('linkType', linkType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DynamicLinksState &&
            (identical(other.linkType, linkType) ||
                const DeepCollectionEquality()
                    .equals(other.linkType, linkType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(linkType);

  @JsonKey(ignore: true)
  @override
  _$DynamicLinksStateCopyWith<_DynamicLinksState> get copyWith =>
      __$DynamicLinksStateCopyWithImpl<_DynamicLinksState>(this, _$identity);
}

abstract class _DynamicLinksState implements DynamicLinksState {
  const factory _DynamicLinksState(
      {required Option<DynamicLinkType> linkType}) = _$_DynamicLinksState;

  @override
  Option<DynamicLinkType> get linkType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DynamicLinksStateCopyWith<_DynamicLinksState> get copyWith =>
      throw _privateConstructorUsedError;
}
