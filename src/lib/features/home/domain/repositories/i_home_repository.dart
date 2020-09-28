import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/device_info.dart';
import '../entities/network_info.dart';

abstract class IHomeRepository {
  /// Fetch details of currently connected network.
  ///
  /// Throws a [NetworkFailure] if there is problem.
  /// Returns [NetworkInfo] on success.
  Future<Either<Failure, NetworkInfo>> checkNetwork();

  /// Find all the connected devices in the network
  ///
  /// Returns Empty [List<DeviceInfo>] i.e zero length, if zero devices found.
  /// Returns [List<DeviceInfo>] on success.
  Future<Either<Failure, List<DeviceInfo>>> scanDevices();
}
