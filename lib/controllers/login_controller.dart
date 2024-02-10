// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:sp_util/sp_util.dart';

class LoginController extends GetxController {
  final isKeyboarVisible = false.obs;
  final loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  GetStorage storage = GetStorage();
  // final authService = AuthServices();

  @override
  void onInit() {
    KeyboardVisibilityController().onChange.listen((isVisible) {
      isKeyboarVisible.value = isVisible;
    });
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

/// Menggunakan Login Provider pada login_provider.dart
  // login() async {
  //   if (GetUtils.isEmail(emailController.text) == false ||
  //       emailController.text.isEmpty ||
  //       passwordController.text.isEmpty) {
  //     Get.snackbar("Error", "Email dan Password Tidak Boleh Kosong",
  //         colorText: Colors.white, backgroundColor: Colors.red);
  //   } else {
  //     var data = {
  //       "email": emailController.text,
  //       "password": passwordController.text,
  //     };
  //     LoginProvider().auth(data).then((value) {
  //       EasyLoading.show();
  //       if (value.statusCode == 200) {
  //         var res = value.body;
  //         var user = res['user'];
  //         var token = res['token'];
  //         var name = user['name'];
  //         var email = user['email'];
  //         SpUtil.putString("name", name);
  //         SpUtil.putString("email", email);
  //         SpUtil.putString("token", token);
  //         SpUtil.putBool("isLogin", true);

  //         print(name);
  //         Get.offAllNamed(Routes.login);
  //         Get.snackbar("Success", "Login Berhasil",
  //             backgroundColor: Colors.green, colorText: Colors.white);
  //       } else {
  //         Get.snackbar("Error", "Login Gagal",
  //             backgroundColor: Colors.red, colorText: Colors.white);
  //       }
  //       EasyLoading.dismiss();
  //     });
  //   }
  // }

  // checkLogin() {
  //   if (emailController.text.isEmpty ||
  //       GetUtils.isEmail(emailController.text) == false) {
  //     Get.snackbar("error", "Email is Required");
  //     return;
  //   } else if (passwordController.text.isEmpty) {
  //     Get.snackbar("Error", "Password is Required");
  //   } else {
  //     Get.showOverlay(
  //         asyncFunction: () => login(), loadingWidget: const Loader());
  //   }
  // }

  // login() async {
  //   var response = await http.post(Uri.parse('$baseUrl/signin'), body: {
  //     "email": emailController.text,
  //     "password": passwordController.text,
  //   }, headers: {
  //     'Accept': 'application/json'
  //   });

  //   var res = await jsonDecode(response.body);

  //   if (res.statusCode == 200) {
  //     Get.snackbar("Success", res['message']);
  //     User user = User.fromJson(res['user']);
  //     await SharedPreference().storeUser(json.encode(user));
  //     Get.offAllNamed(Routes.HOME);
  //   } else {
  //     Get.snackbar("Error", res['message']);
  //   }
  // }

  // String? validateEmail(String value) {
  //   if (GetUtils.isEmail(value)) {
  //     return null;
  //   } else {
  //     return "Email Salah";
  //   }
  // }

  // String? validatePassword(String value) {
  //   if (value.length < 8) {
  //     return "Password Salah";
  //   } else {
  //     return null;
  //   }
  // }

  // doLogin() async {
  //   bool isValidate = loginFormKey.currentState!.validate();

  //   if (isValidate) {
  //     isLoading(true);
  //     try {
  //       var data = await AuthServices.login(
  //           email: emailController.text, password: passwordController.text);

  //       if (data != null) {
  //         await storage.write("email", data.user.email);
  //         await storage.write("email", data.token);
  //         loginFormKey.currentState!.save();
  //         Get.toNamed(Routes.HOME);
  //       } else {
  //         Get.snackbar("Login", "Login Anda Bermasalah");
  //       }
  //     } finally {
  //       isLoading(false);
  //     }
  //   }
  // }
  // doLogin() async {
  //   // Validasi form
  //   if (loginFormKey.currentState!.validate()) {
  //     // Tampilkan loading
  //     isLoading(true);

  //     try {
  //       // Kirim request POST ke API login
  //       final token = await authService.login(
  //           emailController.text, passwordController.text);

  //       if (token != null) {
  //         // Simpan token ke storage
  //         await storage.write('token', token);

  //         // Navigate ke home page
  //         Get.toNamed(Routes.HOME);
  //       } else {
  //         // Tampilkan snackbar error
  //         Get.snackbar('Login', 'Invalid credentials');
  //       }
  //     } finally {
  //       // Hilangkan loading
  //       isLoading(false);
  //     }
  //   }
  //   return null;
  // }
}
