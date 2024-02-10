import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:karyawan_absensi/routes/app_page.dart';
import 'package:latlong2/latlong.dart';
import '../controllers/lokasi_controller.dart';

class LokasiView extends GetView<LokasiController> {
  const LokasiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF304A93),
        title: const Text(
          'Kembali',
          style: TextStyle(
            fontFamily: 'NexaBold',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        titleSpacing: -10,
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(-6.571589, 107.758736),
          initialZoom: 9.2,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: Get.width,
        height: Get.height * 0.16,
        decoration: BoxDecoration(
          color: const Color(0xFF304A93),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                  'Jl. Ir H. Juanda No.95, Ciputat, Kec. Ciputat Tim., Kota Tangerang Selatan, Banten 15412',
                  style: TextStyle(color: Colors.white)),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.selfie);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Absen Sekarang',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'NexaBold',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF304A93),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
