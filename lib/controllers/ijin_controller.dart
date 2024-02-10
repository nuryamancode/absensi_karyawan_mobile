import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class IjinController extends GetxController {
  // accordion ijin
  final isExpanded1 = false.obs;
  final isExpanded2 = false.obs;
  // accordion ijin
  // text controller pada form
  TextEditingController date1Controller = TextEditingController();
  TextEditingController date2Controller = TextEditingController();
  TextEditingController lainnyaController = TextEditingController();
  // text controller pada form
  // ambil tanggal
  Rx<DateTime?> selectedDate1 = Rx<DateTime?>(null);
  Rx<DateTime?> selectedDate2 = Rx<DateTime?>(null);
  // ambil tanggal
  // select alasan cuti
  RxInt selectedValue = 0.obs;
  List<String> options = [
    'Keperluan Keluarga',
    'Keperluan Mendadak',
    'Keperluan Lainnya'
  ];
  String get selectedOption => options[selectedValue.value];
  // select alasan cuti

// upload image sakit
  Rx<File?> image = Rx<File?>(null);

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      fieldLabelText:
          '', // Set fieldLabelText to an empty string to hide the "Enter Date" label
    );

    if (picked != null && picked != selectedDate1.value) {
      selectedDate1.value = picked;
      date1Controller.text =
          DateFormat('yyyy-MM-dd').format(picked); // Format as needed
    }
  }

  Future<void> selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    // if (picked != null){
    //   date1Controller.text = picked.toString().split("")[0];
    // }
    if (picked != null && picked != selectedDate2.value) {
      selectedDate2.value = picked;
      date2Controller.text =
          DateFormat('yyyy-MM-dd').format(picked); // Format as needed
    }
  }

  Future<void> getImage() async {
   final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image.value = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }
}
