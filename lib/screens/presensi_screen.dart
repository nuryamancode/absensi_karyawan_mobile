import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karyawan_absensi/routes/app_page.dart';
import '../controllers/presensi_controller.dart';

class PresensiView extends GetView<PresensiController> {
  const PresensiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF304A93),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.notifikasi);
            },
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
        ],
        backgroundColor: const Color(0xFF304A93),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            controller.refreshData();
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage:
                          AssetImage('assets/image/pp.jpg'), // Obx Foto
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(),
                      child: const Text(
                        "Iqbal Nuryaman", //Obx Nama
                        style: TextStyle(
                            fontFamily: 'NexaBold',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        "Programmer", // Obx Profesi
                        // "${SpUtil.getString('name')}",
                        style: TextStyle(
                            fontFamily: 'NexaBold',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: Get.height * 0.61,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          color: Colors.black12)
                    ],
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    child: Column(
                      children: [
                        Container(
                          height: Get.height * 0.23,
                          width: Get.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.fromBorderSide(
                              BorderSide(
                                color: Colors.black38,
                                width: 0.5,
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Colors.black12)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Absen Sekarang",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Rab, 31 Jan 2024", // Obx Tanggal
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF304A93)),
                                        ),
                                        Text(
                                          "00.00 WIB", // Obx Jam
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF304A93)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Text(
                                  "09:00 - 17:00", // Obx jam absensi
                                  style: TextStyle(
                                      color: Color(0xFF304A93),
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IntrinsicWidth(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Color(0xFF304A93),
                                            ),
                                          ),
                                          onPressed: () {
                                            Get.toNamed(Routes.lokasi);
                                          },
                                          child: const Row(
                                            children: [
                                              Icon(Icons.alarm_on,
                                                  color: Colors.white),
                                              SizedBox(width: 8),
                                              Text(
                                                  "Masuk", //OBx Checkin atau checkout
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                         ElevatedButton(
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Color(0xFF304A93),
                                            ),
                                          ),
                                          onPressed: (){
                                            Get.toNamed(Routes.lokasi);
                                          },
                                          child: const Row(
                                            children: [
                                              Icon(Icons.alarm_off,
                                                  color: Colors.white),
                                              SizedBox(width: 8),
                                              Text(
                                                  "Keluar", //OBx Checkin atau checkout
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Riwayat Absensi',
                                style: TextStyle(
                                    fontFamily: 'NexaBold',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFD71313)),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Obx(
                            () {
                              if (controller.historyList.isEmpty) {
                                return const Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Tidak ada aktivitas hari ini',
                                        style: TextStyle(
                                            fontFamily: 'NexaRegular',
                                            fontSize: 16,
                                            color: Color(0xFF304A93),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Anda dapat memeriksa waktu jam masuk/keluar di sini',
                                        style: TextStyle(
                                          fontFamily: 'NexaRegular',
                                          fontSize: 12,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return ListView.builder(
                                  itemCount: controller.historyList.length,
                                  itemBuilder: (context, index) {
                                    var historyItem =
                                        controller.historyList[index];
                                    return Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            historyItem.title,
                                            style: const TextStyle(
                                              fontFamily: 'NexaBold',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          subtitle: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                historyItem.jam,
                                                style: const TextStyle(
                                                  fontFamily: 'NexaRegular',
                                                  fontSize: 12,
                                                  color: Color(0xFF304A93),
                                                ),
                                              ),
                                              Text(
                                                historyItem.date,
                                                style: const TextStyle(
                                                  fontFamily: 'NexaRegular',
                                                  fontSize: 12,
                                                  color: Color(0xFF304A93),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          color: Colors.grey,
                                          thickness: 1.0,
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
