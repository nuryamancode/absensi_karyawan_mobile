import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformasiView extends GetView {
  const InformasiView({super.key});

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
        child: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    color: Color(0xFF304A93),
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
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/image/pp.jpg'),
                            ),
                            Positioned(
                              bottom: -10,
                              left: 53,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add_a_photo),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Iqbal Nuryaman", //Obx Nama
                              style: TextStyle(
                                  fontFamily: 'NexaBold',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32),
                            ),
                            Text(
                              "Programmer", // Obx Profesi
                              // "${SpUtil.getString('name')}",
                              style: TextStyle(
                                  fontFamily: 'NexaBold',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                            Text(
                              "Jakarta,Indonesia", // Obx Profesi
                              // "${SpUtil.getString('name')}",
                              style: TextStyle(
                                  fontFamily: 'NexaBold',
                                  color: Colors.white,
                                  fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Detail Personal ',
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
                                  'Nama Lengkap',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  controller: TextEditingController(),
                                  autocorrect: true,
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
                                    prefixIcon: const Icon(Icons.person),
                                  ),
                                ),
                                const SizedBox(height: 10),

                                // Field 2
                                const Text(
                                  'Tanggal Lahir',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  controller: TextEditingController(),
                                  autocorrect: true,
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
                                        const Icon(Icons.calendar_month),
                                  ),
                                ),
                                const SizedBox(height: 10),

                                // Field 3
                                const Text(
                                  'Nomor Handphone',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  controller: TextEditingController(),
                                  autocorrect: true,
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
                                    prefixIcon: const Icon(Icons.phone_android),
                                  ),
                                ),
                                const SizedBox(height: 10),

                                // Field 4
                                const Text(
                                  'Alamat Lengkap',
                                  style: TextStyle(
                                      fontFamily: 'NexaRegular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  controller: TextEditingController(),
                                  autocorrect: true,
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
                                    prefixIcon: const Icon(Icons.location_on),
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
                                        Icons.edit,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Ubah',
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
