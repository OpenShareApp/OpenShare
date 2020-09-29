// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeviceInfoTearOff {
  const _$DeviceInfoTearOff();

// ignore: unused_element
  _DeviceInfo call(
      {@required String name,
      @required String type,
      @required String hostname,
      @required int port,
      @required String txt}) {
    return _DeviceInfo(
      name: name,
      type: type,
      hostname: hostname,
      port: port,
      txt: txt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceInfo = _$DeviceInfoTearOff();

/// @nodoc
mixin _$DeviceInfo {
  String get name;
  String get type;
  String get hostname;
  int get port;
  String get txt;

  $DeviceInfoCopyWith<DeviceInfo> get copyWith;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res>;
  $Res call({String name, String type, String hostname, int port, String txt});
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res> implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  final DeviceInfo _value;
  // ignore: unused_field
  final $Res Function(DeviceInfo) _then;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
    Object hostname = freezed,
    Object port = freezed,
    Object txt = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      hostname: hostname == freezed ? _value.hostname : hostname as String,
      port: port == freezed ? _value.port : port as int,
      txt: txt == freezed ? _value.txt : txt as String,
    ));
  }
}

/// @nodoc
abstract class _$DeviceInfoCopyWith<$Res> implements $DeviceInfoCopyWith<$Res> {
  factory _$DeviceInfoCopyWith(
          _DeviceInfo value, $Res Function(_DeviceInfo) then) =
      __$DeviceInfoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String type, String hostname, int port, String txt});
}

/// @nodoc
class __$DeviceInfoCopyWithImpl<$Res> extends _$DeviceInfoCopyWithImpl<$Res>
    implements _$DeviceInfoCopyWith<$Res> {
  __$DeviceInfoCopyWithImpl(
      _DeviceInfo _value, $Res Function(_DeviceInfo) _then)
      : super(_value, (v) => _then(v as _DeviceInfo));

  @override
  _DeviceInfo get _value => super._value as _DeviceInfo;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
    Object hostname = freezed,
    Object port = freezed,
    Object txt = freezed,
  }) {
    return _then(_DeviceInfo(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      hostname: hostname == freezed ? _value.hostname : hostname as String,
      port: port == freezed ? _value.port : port as int,
      txt: txt == freezed ? _value.txt : txt as String,
    ));
  }
}

/// @nodoc
class _$_DeviceInfo implements _DeviceInfo {
  const _$_DeviceInfo(
      {@required this.name,
      @required this.type,
      @required this.hostname,
      @required this.port,
      @required this.txt})
      : assert(name != null),
        assert(type != null),
        assert(hostname != null),
        assert(port != null),
        assert(txt != null);

  @override
  final String name;
  @override
  final String type;
  @override
  final String hostname;
  @override
  final int port;
  @override
  final String txt;

  @override
  String toString() {
    return 'DeviceInfo(name: $name, type: $type, hostname: $hostname, port: $port, txt: $txt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)) &&
            (identical(other.port, port) ||
                const DeepCollectionEquality().equals(other.port, port)) &&
            (identical(other.txt, txt) ||
                const DeepCollectionEquality().equals(other.txt, txt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(hostname) ^
      const DeepCollectionEquality().hash(port) ^
      const DeepCollectionEquality().hash(txt);

  @override
  _$DeviceInfoCopyWith<_DeviceInfo> get copyWith =>
      __$DeviceInfoCopyWithImpl<_DeviceInfo>(this, _$identity);
}

abstract class _DeviceInfo implements DeviceInfo {
  const factory _DeviceInfo(
      {@required String name,
      @required String type,
      @required String hostname,
      @required int port,
      @required String txt}) = _$_DeviceInfo;

  @override
  String get name;
  @override
  String get type;
  @override
  String get hostname;
  @override
  int get port;
  @override
  String get txt;
  @override
  _$DeviceInfoCopyWith<_DeviceInfo> get copyWith;
}
