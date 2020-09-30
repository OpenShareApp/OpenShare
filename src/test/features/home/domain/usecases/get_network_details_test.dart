import 'package:OpenShare/core/enums/network_type.dart';
import 'package:OpenShare/core/usecase/usecase.dart';
import 'package:OpenShare/features/home/domain/entities/network_info.dart';
import 'package:OpenShare/features/home/domain/repositories/i_home_repository.dart';
import 'package:OpenShare/features/home/domain/usecases/get_network_details.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockHomeRepository extends Mock implements IHomeRepository {}

void main() {
  GetNetworkDetails usecase;
  MockHomeRepository mockHomeRepository;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    usecase = GetNetworkDetails(mockHomeRepository);
  });

  final networkInfoWifi = NetworkInfo(type: NetworkType.wifi, name: 'Raj');
  final networkInfoMobile =
      NetworkInfo(type: NetworkType.mobile, name: 'Airtel');

  group('should get network info from repository', () {
    test('should get wifi info from the device', () async {
      // arrange
      when(mockHomeRepository.getNetworkInfo())
          .thenAnswer((_) async => Right(networkInfoWifi));

      // act
      final result = await usecase(NoParams());

      // assert
      expect(result, Right(networkInfoWifi));
      verify(mockHomeRepository.getNetworkInfo());
      verifyNoMoreInteractions(mockHomeRepository);
    });
    test('should get cellular info from the device', () async {
      // arrange
      when(mockHomeRepository.getNetworkInfo())
          .thenAnswer((_) async => Right(networkInfoMobile));

      // act
      final result = await usecase(NoParams());

      // assert
      expect(result, Right(networkInfoMobile));
      verify(mockHomeRepository.getNetworkInfo());
      verifyNoMoreInteractions(mockHomeRepository);
    });
  });
}
