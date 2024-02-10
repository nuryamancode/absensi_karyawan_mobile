import 'package:get/get.dart';
import '../bindings/agenda_bindings.dart';
import '../bindings/bottom_nav_bindings.dart';
import '../bindings/presensi_bindings.dart';
import '../bindings/lokasi_bindings.dart';
import '../bindings/login_bindings.dart';
import '../bindings/selfie_bindings.dart';
import '../screens/agenda_screen.dart';
import '../screens/gantipassword_screen.dart';
import '../screens/informasipribadi_screen.dart';
import '../screens/login_screen.dart';
import '../screens/lokasi_screen.dart';
import '../screens/presensi_screen.dart';
import '../screens/selfie_screen.dart';
import '../screens/splash_screen.dart';
import '../utils/bottom_bar_screen.dart';


class AppPages {
  AppPages._();

  static const initial = Routes.bottom;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const PresensiView(),
      binding: PresensiBinding(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
    GetPage(
      name: _Paths.lokasi,
      page: () => const LokasiView(),
      binding: LokasiBinding(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
    GetPage(
      name: _Paths.informasi,
      page: () => const InformasiView(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
    GetPage(
      name: _Paths.password,
      page: () => const PasswordView(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
    GetPage(
      name: _Paths.agenda,
      page: () => const AgendaView(),
      binding: AgendaBinding(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
    GetPage(
      name: _Paths.bottom,
      page: () => const BottomNav(),
      binding: BottomBinding(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
    GetPage(
      name: _Paths.selfie,
      page: () => const SelfieView(),
      binding: SelfieBinding(),
      // transition: Transition.fade
      // transitionDuration: Duration(milliseconds: 2)
    ),
  ];
}

abstract class Routes {
  Routes._();

  static const home= _Paths.home;
  static const agenda= _Paths.agenda;
  static const informasi= _Paths.informasi;
  static const lokasi= _Paths.lokasi;
  static const selfie= _Paths.selfie;
  static const password= _Paths.password;
  static const bottom = _Paths.bottom;
  static const login = _Paths.login;
}

abstract class _Paths {
  _Paths._();

  static const home = '/home';
  static const agenda = '/agenda';
  static const bottom = '/bottom';
  static const informasi = '/informasi';
  static const selfie = '/selfie';
  static const lokasi = '/lokasi';
  static const password = '/password';
  static const splash = '/splash';
  static const login = '/login';
}