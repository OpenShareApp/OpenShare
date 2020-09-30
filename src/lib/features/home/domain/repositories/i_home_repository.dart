import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/network_info.dart';

abstract class IHomeRepository {
  /// Returns connected [NetworkInfo]
  Future<Either<Failure, NetworkInfo>> getNetworkInfo();
}
