import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/network_info.dart';

abstract class IHomeRepository {
  Future<Either<Failure, NetworkInfo>> getNetworkInfo();
}
