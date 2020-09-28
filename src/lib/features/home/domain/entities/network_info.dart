import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_info.freezed.dart';

enum NetworkType { wifi, cellular }

@freezed
abstract class NetworkInfo with _$NetworkInfo {
  const factory NetworkInfo(
      {@required NetworkType type, @required String name}) = _NetworkInfo;
}
