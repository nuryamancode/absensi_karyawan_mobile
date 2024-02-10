import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_page.dart';


void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppPages.initial,
    getPages: AppPages.routes,
  ));
}

