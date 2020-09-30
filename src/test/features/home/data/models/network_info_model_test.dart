import 'package:OpenShare/core/enums/network_type.dart';
import 'package:OpenShare/features/home/data/models/network_info_model.dart';
import 'package:OpenShare/features/home/domain/entities/network_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tNetworkInfoModel =
      NetworkInfoModel(type: NetworkType.wifi, name: 'Raj');
  final tNetworkInfo = NetworkInfo(type: NetworkType.wifi, name: 'Raj');

  test('should return entity from model', () {
    // assert
    expect(tNetworkInfo, tNetworkInfoModel.toEntity());
  });

  test('should return model from entity', () {
    // assert
    expect(tNetworkInfoModel, NetworkInfoModel.fromEntity(tNetworkInfo));
  });
}
