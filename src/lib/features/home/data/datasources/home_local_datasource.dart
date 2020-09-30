import 'package:OpenShare/core/error/exeptions.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/enums/network_type.dart';
import '../../../../core/network/connection.dart';
import '../../domain/entities/device_info.dart';
import '../models/network_info_model.dart';

abstract class IHomeLocalDatasource {
  /// Fetch details of currently connected network.
  ///
  /// Throws a [NetworkException] if there is problem.
  /// Returns [NetworkInfoModel] on success.
  Future<NetworkInfoModel> checkNetwork();

  /// Find all the connected devices in the network
  ///
  /// Returns Empty [List<DeviceInfoModel>] i.e zero length, if zero devices found.
  /// Returns [List<DeviceInfoModel>] on success.
  Future<List<DeviceInfo>> scanDevices();
}

@Injectable(as: IHomeLocalDatasource)
@lazySingleton
class HomeLocalDatasource implements IHomeLocalDatasource {
  final IConnection connection;

  const HomeLocalDatasource(this.connection);

  @override
  Future<NetworkInfoModel> checkNetwork() async {
    final networkMode = await connection.mode;
    if (networkMode == 'mobile') {
      return Future.value(NetworkInfoModel(type: NetworkType.mobile, name: ''));
    }
    if (networkMode == 'wifi') {
      return Future.value(NetworkInfoModel(
          type: NetworkType.wifi, name: await connection.networkName));
    }
    throw NetworkException();
  }

  @override
  Future<List<DeviceInfo>> scanDevices() {
    // TODO: implement scanDevices
    throw UnimplementedError();
  }
}
