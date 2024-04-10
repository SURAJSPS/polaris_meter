import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:polaris_meter/common_libs.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfo implements INetworkInfo {
  final Connectivity connectivity;
  NetworkInfo({required this.connectivity});

  @override
  Future<bool> get isConnected async {
    final List<ConnectivityResult> connectionResult =
        await (connectivity.checkConnectivity());

    if (connectionResult.contains(ConnectivityResult.mobile) ||
        connectionResult.contains(ConnectivityResult.wifi)) {
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }
}
