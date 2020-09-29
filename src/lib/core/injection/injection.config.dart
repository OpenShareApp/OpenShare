// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:hive/hive.dart';
import 'package:connectivity/connectivity.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../features/home/domain/usecases/check_network.dart';
import '../../features/home/data/repositories/home_repository.dart';
import '../network/connection.dart';
import '../../features/home/data/datasources/home_local_datasource.dart';
import '../../features/home/domain/repositories/i_home_repository.dart';
import '../network/register_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final box = await registerModule.openBox;
  gh.lazySingleton<Box<dynamic>>(() => box);
  gh.lazySingleton<Connectivity>(() => registerModule.connectivity);
  gh.factory<IConnection>(() => Connection(get<Connectivity>()));
  gh.factory<IHomeLocalDatasource>(
      () => HomeLocalDatasource(get<Connection>()));
  gh.factory<IHomeRepository>(
      () => HomeRepository(get<IHomeLocalDatasource>()));
  gh.lazySingleton<CheckNetwork>(() => CheckNetwork(get<IHomeRepository>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
