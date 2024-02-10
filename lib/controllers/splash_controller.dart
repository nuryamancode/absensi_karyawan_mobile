import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../routes/app_page.dart';

class SplashController extends GetxController {
  var storage = GetStorage();

  var name = ''.obs;
  var token = '';

  @override
  void onInit() {
    // authData();
    super.onInit();
  }

  // authData() async {
  //   if (name.value != null) {
  //     await storage.read("name");
  //   }
  //   if (token != null) {
  //     await storage.read("token");
  //   }
  // }

  bool isAuth() {
    return token.isNotEmpty;
  }

  doLogout() async {
    await storage.remove('token');
    Get.toNamed(Routes.login);
  }
}
