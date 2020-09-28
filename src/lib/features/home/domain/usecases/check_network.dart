import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/network_info.dart';

class CheckNetwork implements UseCase<NetworkType, NoParams> {
  @override
  Future<Either<Failure, NetworkType>> call(NoParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
