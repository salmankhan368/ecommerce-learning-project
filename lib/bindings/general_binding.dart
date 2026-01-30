import 'package:get/get.dart';
import 'package:s_store/fetaures/authentication/controllers.onboarding/network/network_manger.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
