import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordView extends GetView {
  const PasswordView({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Ganti Password ',
                        style: TextStyle(
                            fontFamily: 'NexaBold',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Divider(
                          height: 12,
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              offset: Offset(3, 4),
                              spreadRadius: 2,
                              color: Colors.black26)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            const Text(
                              'Password Baru',
                              style: TextStyle(
                                  fontFamily: 'NexaRegular',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              controller: TextEditingController(),
                              autocorrect: true,
                              obscureText: true,
                              decoration: InputDecoration(
                                fillColor: Colors.grey[150],
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
                                prefixIcon: const Icon(Icons.password),
                              ),
                            ),
                            const SizedBox(height: 10),
                
                            // Field 2
                            const Text(
                              'Konfirmasi Password',
                              style: TextStyle(
                                  fontFamily: 'NexaRegular',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              controller: TextEditingController(),
                              autocorrect: true,
                              obscureText: true,
                              decoration: InputDecoration(
                                fillColor: Colors.grey[150],
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
                                prefixIcon:
                                    const Icon(Icons.password),
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
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.security,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Ganti',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
       bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 87),
        child: Text(
          'Copyright © 2023 Mareca Yasa Media',
          style:
              TextStyle(color: Color.fromARGB(153, 10, 10, 10), fontSize: 13),
        ),
      ),
    );
  }
}
