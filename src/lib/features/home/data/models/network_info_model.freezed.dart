// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'network_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NetworkInfoModelTearOff {
  const _$NetworkInfoModelTearOff();

// ignore: unused_element
  _NetworkInfoModel call({@required NetworkType type, @required String name}) {
    return _NetworkInfoModel(
      type: type,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkInfoModel = _$NetworkInfoModelTearOff();

/// @nodoc
mixin _$NetworkInfoModel {
  NetworkType get type;
  String get name;

  $NetworkInfoModelCopyWith<NetworkInfoModel> get copyWith;
}

/// @nodoc
abstract class $NetworkInfoModelCopyWith<$Res> {
  factory $NetworkInfoModelCopyWith(
          NetworkInfoModel value, $Res Function(NetworkInfoModel) then) =
      _$NetworkInfoModelCopyWithImpl<$Res>;
  $Res call({NetworkType type, String name});
}

/// @nodoc
class _$NetworkInfoModelCopyWithImpl<$Res>
    implements $NetworkInfoModelCopyWith<$Res> {
  _$NetworkInfoModelCopyWithImpl(this._value, this._then);

  final NetworkInfoModel _value;
  // ignore: unused_field
  final $Res Function(NetworkInfoModel) _then;

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
abstract class _$NetworkInfoModelCopyWith<$Res>
    implements $NetworkInfoModelCopyWith<$Res> {
  factory _$NetworkInfoModelCopyWith(
          _NetworkInfoModel value, $Res Function(_NetworkInfoModel) then) =
      __$NetworkInfoModelCopyWithImpl<$Res>;
  @override
  $Res call({NetworkType type, String name});
}

/// @nodoc
class __$NetworkInfoModelCopyWithImpl<$Res>
    extends _$NetworkInfoModelCopyWithImpl<$Res>
    implements _$NetworkInfoModelCopyWith<$Res> {
  __$NetworkInfoModelCopyWithImpl(
      _NetworkInfoModel _value, $Res Function(_NetworkInfoModel) _then)
      : super(_value, (v) => _then(v as _NetworkInfoModel));

  @override
  _NetworkInfoModel get _value => super._value as _NetworkInfoModel;

  @override
  $Res call({
    Object type = freezed,
    Object name = freezed,
  }) {
    return _then(_NetworkInfoModel(
      type: type == freezed ? _value.type : type as NetworkType,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_NetworkInfoModel implements _NetworkInfoModel {
  const _$_NetworkInfoModel({@required this.type, @required this.name})
      : assert(type != null),
        assert(name != null);

  @override
  final NetworkType type;
  @override
  final String name;

  @override
  String toString() {
    return 'NetworkInfoModel(type: $type, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NetworkInfoModel &&
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
  _$NetworkInfoModelCopyWith<_NetworkInfoModel> get copyWith =>
      __$NetworkInfoModelCopyWithImpl<_NetworkInfoModel>(this, _$identity);
}

abstract class _NetworkInfoModel implements NetworkInfoModel {
  const factory _NetworkInfoModel(
      {@required NetworkType type,
      @required String name}) = _$_NetworkInfoModel;

  @override
  NetworkType get type;
  @override
  String get name;
  @override
  _$NetworkInfoModelCopyWith<_NetworkInfoModel> get copyWith;
}
