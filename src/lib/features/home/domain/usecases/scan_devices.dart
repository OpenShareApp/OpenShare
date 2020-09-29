import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/device_info.dart';

class ScanDevices implements UseCase<List<DeviceInfo>, NoParams> {
  @override
  Future<Either<Failure, List<DeviceInfo>>> call(NoParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
