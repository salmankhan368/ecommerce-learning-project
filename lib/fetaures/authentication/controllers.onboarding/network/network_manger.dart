import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:s_store/utils/popUp/loader.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();

  // FIX 1: StreamSubscription ka type sahi
  late StreamSubscription<List<ConnectivityResult>> _connectivitysubscription;

  final Rx<ConnectivityResult> _connectivityStatus =
      ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();

    // FIX 2: listen syntax + list handle
    _connectivitysubscription = _connectivity.onConnectivityChanged.listen((
      results,
    ) {
      _updateConnectionStatus(results.first);
    });
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectivityStatus.value = result;

    if (result == ConnectivityResult.none) {
      SLoaders.warningSnackBar(title: 'No Internet Connection');
    }
  }

  // check internet connectivity
  // if yes it gives us true otherwise false
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  // Close the active connectivity
  void onClose() {
    _connectivitysubscription.cancel();
    super.onClose();
  }
}
