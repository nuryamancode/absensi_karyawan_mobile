import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

import '../routes/app_page.dart';

class ProfilView extends GetView {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          'Akun Saya',
          style: TextStyle(
            fontFamily: 'NexaBold',
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF304A93),
      ),
      body: SafeArea(
          child: RefreshIndicator(
        onRefresh: () async {
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.13,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, spreadRadius: 3, color: Colors.black12)
                ],
                color: Color(0xFFB0EACD),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Iqbal Nuryaman',
                            style: TextStyle(
                                fontFamily: 'NexaBold',
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Programmer',
                            style: TextStyle(
                              fontFamily: 'NexaRegular',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Jakarta, Indonesia',
                            style: TextStyle(
                              fontFamily: 'NexaRegular',
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage('assets/image/pp.jpg'), // Obx Foto
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // button personal
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.informasi);
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
                            child: Image.asset('assets/image/personalinfo.png'),
                          ),
                          const SizedBox(width: 16),
                          const Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Informasi Pribadi',
                                  style: TextStyle(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(Icons.chevron_right, color: Colors.black),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // button chanegepassword
                  ElevatedButton(
                    onPressed: () {
                       Get.toNamed(Routes.password);
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
                            child:
                                Image.asset('assets/image/resetpassword.png'),
                          ),
                          const SizedBox(width: 16),
                          const Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Ganti Password',
                                  style: TextStyle(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(Icons.chevron_right, color: Colors.black),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // button logout
                  ElevatedButton(
                    onPressed: () async {
                      await SpUtil.clear();
                      Get.offAllNamed(Routes.login);
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
                            child: Image.asset('assets/image/logout.png'),
                          ),
                          const SizedBox(width: 18),
                          const Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Keluar',
                                  style: TextStyle(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(Icons.chevron_right, color: Colors.black),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
