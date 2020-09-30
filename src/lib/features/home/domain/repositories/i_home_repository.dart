import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/network_info.dart';

abstract class IHomeRepository {
  /// Returns connected [NetworkInfo].
  ///
  /// Returns [NetworkFailure] if no valid network mode found.
  Future<Either<Failure, NetworkInfo>> getNetworkInfo();
}
