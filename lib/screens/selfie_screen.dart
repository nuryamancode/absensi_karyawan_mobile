import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/selfie_controller.dart';

class SelfieView extends GetView<SelfieController> {
  const SelfieView({Key? key}) : super(key: key);

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
      body: SafeArea(
        child: Center(
          child: Obx(() {
            if (controller.image.value != null) {
              return Image.file(controller.image.value!);
            } else {
              return const CircularProgressIndicator();
            }
          }),
        ),
      ),
      bottomNavigationBar: Container(
        height: Get.height * 0.248,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Color(0xFF304A93),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.getImage();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(20, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add_a_photo,
                      color: Color(0xFF304A93),
                      size: 26,
                    ),
                    SizedBox(width: 8),
                    Baseline(
                      baseline: 16,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Ambil Ulang',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'NexaBold',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF304A93),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 1),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(20, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.alarm,
                      color: Color(0xFF304A93),
                      size: 26,
                    ),
                    SizedBox(width: 8),
                    Baseline(
                      baseline: 16,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Absen Selesai',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'NexaBold',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF304A93),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
