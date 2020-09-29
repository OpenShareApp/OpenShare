// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'network_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NetworkInfoTearOff {
  const _$NetworkInfoTearOff();

// ignore: unused_element
  _NetworkInfo call({@required NetworkType type, @required String name}) {
    return _NetworkInfo(
      type: type,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkInfo = _$NetworkInfoTearOff();

/// @nodoc
mixin _$NetworkInfo {
  NetworkType get type;
  String get name;

  $NetworkInfoCopyWith<NetworkInfo> get copyWith;
}

/// @nodoc
abstract class $NetworkInfoCopyWith<$Res> {
  factory $NetworkInfoCopyWith(
          NetworkInfo value, $Res Function(NetworkInfo) then) =
      _$NetworkInfoCopyWithImpl<$Res>;
  $Res call({NetworkType type, String name});
}

/// @nodoc
class _$NetworkInfoCopyWithImpl<$Res> implements $NetworkInfoCopyWith<$Res> {
  _$NetworkInfoCopyWithImpl(this._value, this._then);

  final NetworkInfo _value;
  // ignore: unused_field
  final $Res Function(NetworkInfo) _then;

  @override
  $Res call({
    Object type = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as NetworkType,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$NetworkInfoCopyWith<$Res>
    implements $NetworkInfoCopyWith<$Res> {
  factory _$NetworkInfoCopyWith(
          _NetworkInfo value, $Res Function(_NetworkInfo) then) =
      __$NetworkInfoCopyWithImpl<$Res>;
  @override
  $Res call({NetworkType type, String name});
}

/// @nodoc
class __$NetworkInfoCopyWithImpl<$Res> extends _$NetworkInfoCopyWithImpl<$Res>
    implements _$NetworkInfoCopyWith<$Res> {
  __$NetworkInfoCopyWithImpl(
      _NetworkInfo _value, $Res Function(_NetworkInfo) _then)
      : super(_value, (v) => _then(v as _NetworkInfo));

  @override
  _NetworkInfo get _value => super._value as _NetworkInfo;

  @override
  $Res call({
    Object type = freezed,
    Object name = freezed,
  }) {
    return _then(_NetworkInfo(
      type: type == freezed ? _value.type : type as NetworkType,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_NetworkInfo implements _NetworkInfo {
  const _$_NetworkInfo({@required this.type, @required this.name})
      : assert(type != null),
        assert(name != null);

  @override
  final NetworkType type;
  @override
  final String name;

  @override
  String toString() {
    return 'NetworkInfo(type: $type, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NetworkInfo &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$NetworkInfoCopyWith<_NetworkInfo> get copyWith =>
      __$NetworkInfoCopyWithImpl<_NetworkInfo>(this, _$identity);
}

abstract class _NetworkInfo implements NetworkInfo {
  const factory _NetworkInfo(
      {@required NetworkType type, @required String name}) = _$_NetworkInfo;

  @override
  NetworkType get type;
  @override
  String get name;
  @override
  _$NetworkInfoCopyWith<_NetworkInfo> get copyWith;
}
