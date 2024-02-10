import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';


class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  // checkUser() async {
  //   var user = SharedPreference().getUser();
  //   if (user != null) {
  //     Get.offNamed(Routes.home);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () {
                bool isKeyboardVisible = controller.isKeyboarVisible.value;
                return isKeyboardVisible
                    ? Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.05),
                        child: Center(
                          child: Image.asset(
                            "assets/image/char1.png",
                            width: 90,
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Center(
                          child: Image.asset(
                            "assets/image/char1.png",
                            width: 200,
                          ),
                        ),
                      );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'NexaBold',
                  fontSize: 40,
                  color: Color(0xFF304A93),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Email Start
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: controller.loginFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.emailController,
                      autocorrect: true,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Color(0xFF304A93)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFF304A93),
                            )),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontFamily: 'NexaBold',
                          fontSize: 19,
                          color: Color(0xFF304A93),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xFF304A93),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Password Start
                    TextFormField(
                      controller: controller.passwordController,
                      autocorrect: true,
                      obscureText: true,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Color(0xFF304A93)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFF304A93),
                            )),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontFamily: 'NexaBold',
                          fontSize: 19,
                          color: Color(0xFF304A93),
                        ),
                        prefixIcon: Icon(
                          Icons.security,
                          color: Color(0xFF304A93),
                        ),
                      ),
                    ),

                    /// Button Start
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: ElevatedButton(
                        onPressed: () {
                          // controller.login();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF304A93),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'NexaBold',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
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
          style:
              TextStyle(color: Color.fromARGB(153, 10, 10, 10), fontSize: 13),
        ),
      ),
    );
  }
}
