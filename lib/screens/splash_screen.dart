import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

import '../routes/app_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (SpUtil.getBool('isLogin', defValue: false)!) {
        Get.offAllNamed(Routes.home);
      } else {
        Get.offAllNamed(Routes.login);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF304A93),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/image/logo.png", width: 200),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Employee Attendance',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'NexaBold',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
        child: Text(
          'Copyright © 2023 Mareca Yasa Media',
          style: TextStyle(color: Color.fromARGB(177, 236, 230, 230)),
        ),
      ),
    );
  }
}
