import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exeptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/network_info.dart';
import '../../domain/repositories/i_home_repository.dart';
import '../datasources/home_local_datasource.dart';
import '../models/network_info_model.dart';

@Injectable(as: IHomeRepository)
@lazySingleton
class HomeRepository implements IHomeRepository {
  final IHomeLocalDatasource _localDatasource;

  HomeRepository(this._localDatasource);

  @override
  Future<Either<Failure, NetworkInfo>> getNetworkInfo() async {
    try {
      final model = await _localDatasource.checkNetwork();
      final entity = model.toEntity();
      return Right(entity);
    } on NetworkException {
      return Left(NetworkFailure());
    }
  }
}
