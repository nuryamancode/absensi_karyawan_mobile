import 'package:get/get.dart';

import '../controllers/selfie_controller.dart';

class SelfieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelfieController());
  }
}
