import 'package:freezed_annotation/freezed_annotation.dart';
part 'device_info.freezed.dart';

@freezed
abstract class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo(
      {@required String name,
      @required String type,
      @required String hostname,
      @required int port,
      @required String txt}) = _DeviceInfo;
}
