import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/network_info.dart';
import '../repositories/i_home_repository.dart';

@lazySingleton
class CheckNetwork implements UseCase<NetworkInfo, NoParams> {
  final IHomeRepository _repository;

  CheckNetwork(this._repository);

  @override
  Future<Either<Failure, NetworkInfo>> call(NoParams params) {
    return _repository.getNetworkInfo();
  }
}
