import 'package:OpenShare/core/enums/network_type.dart';
import 'package:OpenShare/core/error/exeptions.dart';
import 'package:OpenShare/core/error/failures.dart';
import 'package:OpenShare/features/home/data/datasources/home_local_datasource.dart';
import 'package:OpenShare/features/home/data/models/network_info_model.dart';
import 'package:OpenShare/features/home/data/repositories/home_repository.dart';
import 'package:OpenShare/features/home/domain/entities/network_info.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockHomeLocalDatasource extends Mock implements IHomeLocalDatasource {}

main() {
  HomeRepository repository;
  MockHomeLocalDatasource mockHomeLocalDatasource;

  setUp(() {
    mockHomeLocalDatasource = MockHomeLocalDatasource();
    repository = HomeRepository(mockHomeLocalDatasource);
  });

  final tNetworkInfoModelWifi =
      NetworkInfoModel(type: NetworkType.wifi, name: 'Raj');
  final tNetworkInfoWifi = NetworkInfo(type: NetworkType.wifi, name: 'Raj');
  final tNetworkInfoModelMobile =
      NetworkInfoModel(type: NetworkType.mobile, name: '');
  final tNetworkInfoMobile = NetworkInfo(type: NetworkType.mobile, name: '');

  group('should return network details from the datasource', () {
    test('should return connected wifi network info', () async {
      // arrange
      when(mockHomeLocalDatasource.checkNetwork())
          .thenAnswer((_) async => tNetworkInfoModelWifi);

      // act
      final result = await repository.getNetworkInfo();

      // assert
      verify(mockHomeLocalDatasource.checkNetwork());
      expect(result, Right(tNetworkInfoWifi));
    });
    test('should return connected mobile network info', () async {
      // arrange
      when(mockHomeLocalDatasource.checkNetwork())
          .thenAnswer((_) async => tNetworkInfoModelMobile);

      // act
      final result = await repository.getNetworkInfo();

      // assert
      verify(mockHomeLocalDatasource.checkNetwork());
      expect(result, Right(tNetworkInfoMobile));
    });

    test('should return NetworkFailure if no valid network details is found',
        () async {
      // arrange
      when(mockHomeLocalDatasource.checkNetwork())
          .thenThrow(NetworkException());

      // act
      final result = await repository.getNetworkInfo();

      // assert
      verify(mockHomeLocalDatasource.checkNetwork());
      expect(result, Left(NetworkFailure()));
    });
  });
}
