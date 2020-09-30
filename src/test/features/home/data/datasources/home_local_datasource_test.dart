import 'package:OpenShare/core/enums/network_type.dart';
import 'package:OpenShare/core/error/exeptions.dart';
import 'package:OpenShare/core/network/connection.dart';
import 'package:OpenShare/features/home/data/datasources/home_local_datasource.dart';
import 'package:OpenShare/features/home/data/models/network_info_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockConnection extends Mock implements IConnection {}

main() {
  HomeLocalDatasource datasource;
  MockConnection mockConnection;

  setUp(() {
    mockConnection = MockConnection();
    datasource = HomeLocalDatasource(mockConnection);
  });

  final wifiNetworkModel =
      NetworkInfoModel(type: NetworkType.wifi, name: 'Raj');
  final mobileNetworkModel =
      NetworkInfoModel(type: NetworkType.mobile, name: '');

  group('shoudl get network details from the device', () {
    test('should get connected wifi info from the device', () async {
      // arrange
      when(mockConnection.mode).thenAnswer((_) async => 'wifi');
      when(mockConnection.networkName).thenAnswer((_) async => 'Raj');

      // act
      final result = await datasource.checkNetwork();

      // assert
      expect(result, equals(wifiNetworkModel));
    });
    test('should get connected mobile info from the device', () async {
      // arrange
      when(mockConnection.mode).thenAnswer((_) async => 'mobile');

      // act
      final result = await datasource.checkNetwork();

      // assert
      expect(result, equals(mobileNetworkModel));
    });

    test(
        'should throw a NetworkException if valid network mode is not detected',
        () async {
      // arrange
      when(mockConnection.mode).thenAnswer((_) async => 'none');

      // act
      final call = datasource.checkNetwork;

      // assert
      expect(() => call(), throwsA(isA<NetworkException>()));
    });
  });
}
