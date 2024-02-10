import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../services/lokasi_service.dart';


class LokasiController extends GetxController {
  Position? userlocation;
  LokasiController({
    this.userlocation,
  });

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 0,
  );
  @override
  void onInit() async {
    super.onInit();
    userlocation = await determinePosition();
    update();
    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position? position) {
      if (position != null) {
        userlocation = position;
        update();
      }
    });
  }

  Future getLocation() async {
    userlocation = await determinePosition();
    update();
  }
}