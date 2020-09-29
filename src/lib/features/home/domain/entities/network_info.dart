import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/network_type.dart';

part 'network_info.freezed.dart';

@freezed
abstract class NetworkInfo with _$NetworkInfo {
  const factory NetworkInfo(
      {@required NetworkType type, @required String name}) = _NetworkInfo;
}
