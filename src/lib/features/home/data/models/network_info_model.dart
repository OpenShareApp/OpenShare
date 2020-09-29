import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/network_type.dart';
import '../../domain/entities/network_info.dart';

part 'network_info_model.freezed.dart';

@freezed
abstract class NetworkInfoModel with _$NetworkInfoModel {
  const factory NetworkInfoModel(
      {@required NetworkType type, @required String name}) = _NetworkInfoModel;
  factory NetworkInfoModel.fromEntity(NetworkInfo info) =>
      NetworkInfoModel(type: info.type, name: info.name);
}

extension NetworkInfoModelX on NetworkInfoModel {
  NetworkInfo toEntity() => NetworkInfo(name: name, type: type);
}
