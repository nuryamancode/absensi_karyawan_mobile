import 'package:get/get.dart';

import '../controllers/agenda_controller.dart';
import '../controllers/ijin_controller.dart';
import '../controllers/presensi_controller.dart';
import '../controllers/profil_controller.dart';

class BottomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PresensiController());
    Get.lazyPut(() => AgendaController());
    Get.lazyPut(() => IjinController());
    Get.lazyPut(() => ProfilController());
  }
}
