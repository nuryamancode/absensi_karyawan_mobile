import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SelfieController extends GetxController {
  Rx<File?> image = Rx<File?>(null);

  @override
  void onInit() {
    getImage();
    super.onInit();
  }

  Future<void> getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      image.value = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }
}
