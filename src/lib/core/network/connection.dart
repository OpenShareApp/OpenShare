import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';

abstract class IConnection {
  Future<String> get mode;
  Future<String> get networkName;
}

@Injectable(as: IConnection)
@lazySingleton
class Connection implements IConnection {
  final Connectivity connectivity;

  const Connection(this.connectivity);

  @override
  Future<String> get mode async {
    final result = await connectivity.checkConnectivity();
    if (result == ConnectivityResult.mobile) {
      return 'mobile';
    }
    if (result == ConnectivityResult.wifi) {
      return 'wifi';
    } else {
      return 'none';
    }
  }

  @override
  Future<String> get networkName => connectivity.getWifiName();
}
