import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ijin_controller.dart';

class IjinView extends GetView<IjinController> {
  const IjinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perijinan Karyawan',
          style: TextStyle(
            fontFamily: 'NexaBold',
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
        ],
        backgroundColor: const Color(0xFF304A93),
      ),
      body: SafeArea(
        child: RefreshIndicator(
           onRefresh: () async {
            
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.2,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, spreadRadius: 3, color: Colors.black12)
                    ],
                    color: Color.fromARGB(255, 249, 203, 0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Enjoy The Ease Of Licensing',
                                style: TextStyle(
                                    fontFamily: 'NexaBold',
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Expanded(
                                child: Text(
                                  'Lakukan pengajuan cuti dengan kemudahan dalam pengajuan secara online, dan selalu cek notifikasi agar dapat mengetahui progress dari setiap pengajuan',
                                  style: TextStyle(
                                    fontFamily: 'NexaRegular',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
          
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/image/ilus1.png',
                          width: 110,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.isExpanded1.value = !controller.isExpanded1.value;
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide.none,
                    elevation: 0,
                    padding: const EdgeInsetsDirectional.only(end: 0),
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          child: Image.asset('assets/image/cutiicon.png'),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Ijin Cuti',
                                style: TextStyle(
                                  fontFamily: 'NexaBold',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Obx(() => Icon(
                                    controller.isExpanded1.value
                                        ? Icons.expand_less
                                        : Icons.expand_more,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(() {
                  if (controller.isExpanded1.value) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Colors.black38,
                            width: 0.6,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: Get.width,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 12),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 249, 203, 0),
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: Colors.black38,
                                  width: 0.6,
                                ),
                              ),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Catatan !!',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Untuk karyawan yang ingin mengajukan cuti, batas hari cuti 1-3 hari sudah menjadi standar perusahaan'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mulai Tanggal Cuti',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectDate1(context);
                                  },
                                  child: AbsorbPointer(
                                    absorbing: true,
                                    child: TextFormField(
                                      controller: controller.date1Controller,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        suffixIcon: const Icon(
                                            Icons.calendar_month_sharp),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Selesai Tanggal Cuti',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectDate2(context);
                                  },
                                  child: AbsorbPointer(
                                    absorbing: true,
                                    child: TextFormField(
                                      controller: controller.date2Controller,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        suffixIcon: const Icon(
                                            Icons.calendar_month_sharp),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Pilih Alasan',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                DropdownButtonFormField(
                                  value: controller.selectedValue.value,
                                  decoration: InputDecoration(
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                  isExpanded: true,
                                  items: List.generate(
                                    controller.options.length,
                                    (index) => DropdownMenuItem(
                                      value: index,
                                      child: Text(controller.options[index]),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    controller.selectedValue(value);
                                  },
                                ),
                                if (controller.selectedOption ==
                                    'Keperluan Lainnya')
                                  TextFormField(
                                    controller: TextEditingController(),
                                    decoration: InputDecoration(
                                      filled: true,
                                      labelText: 'Masukan Keperluan Lainnya',
                                      contentPadding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xFF304A93)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ))),
                                  child: const Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
          
                // Ijin Sakit
                ElevatedButton(
                  onPressed: () {
                    controller.isExpanded2.value = !controller.isExpanded2.value;
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide.none,
                    elevation: 0,
                    padding: const EdgeInsetsDirectional.only(end: 0),
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          child: Image.asset('assets/image/sickicon.png'),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Ijin Sakit',
                                style: TextStyle(
                                  fontFamily: 'NexaBold',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Obx(() => Icon(
                                    controller.isExpanded2.value
                                        ? Icons.expand_less
                                        : Icons.expand_more,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(() {
                  if (controller.isExpanded2.value) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Colors.black38,
                            width: 0.6,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: Get.width,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 12),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 249, 203, 0),
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: Colors.black38,
                                  width: 0.6,
                                ),
                              ),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Catatan !!',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Untuk karyawan yang ingin mengajukan sakit, harus menambahkan tanda bukti dengan surat sakit dari dokter'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mulai Tanggal Cuti',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectDate1(context);
                                  },
                                  child: AbsorbPointer(
                                    absorbing: true,
                                    child: TextFormField(
                                      controller: controller.date1Controller,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        suffixIcon: const Icon(
                                            Icons.calendar_month_sharp),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Selesai Tanggal Cuti',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectDate2(context);
                                  },
                                  child: AbsorbPointer(
                                    absorbing: true,
                                    child: TextFormField(
                                      controller: controller.date2Controller,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        suffixIcon: const Icon(
                                            Icons.calendar_month_sharp),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  child: Obx(() {
                                    if (controller.image.value != null) {
                                      return Container(
                                        height: 200,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                              color: Colors.black38,
                                              width: 0.6,
                                            ),
                                          ),
                                        ),
                                        child: Image.file(
                                          controller.image.value!,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    } else {
                                      return Container();
                                    }
                                  }),
                                ),
                                ElevatedButton.icon(
                                    onPressed: () async {
                                      await controller.getImage();
                                    },
                                    icon: const Icon(Icons.photo_camera_outlined),
                                    label: const Text('Upload Surat Sakit')),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xFF304A93)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ))),
                                  child: const Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
