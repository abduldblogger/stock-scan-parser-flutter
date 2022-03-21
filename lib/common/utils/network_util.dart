import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';

class NetworkUtils {
  static Future<bool> isInternetAvailable() async {
    final Connectivity _connectivity = Connectivity();
    ConnectivityResult result = ConnectivityResult.none;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }
    return _updateConnectionStatus(result);
  }

  static Future<bool> _updateConnectionStatus(ConnectivityResult result) async {
    var _connectionStatus = false;
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
        _connectionStatus = true;
        break;
      default:
        {
          _connectionStatus = false;
        }
    }
    return _connectionStatus;
  }
}
