import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/notifikasi_controller.dart';



class NotifikasiView extends GetView<NotifikasiController>{
 const NotifikasiView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF304A93),
        title: const Center(
          child: Text(
            'Notifikasi',
            style: TextStyle(
              fontFamily: 'NexaBold',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        // titleSpacing: -10,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
            onRefresh: () async {
           
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    'Today - 10 Februari 2024',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'NexaBold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.historyItems.length,
                    itemBuilder: (context, index) {
                      final historyItem = controller.historyItems[index];
                      return Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.notifications_active,size: 36),
                            // leading: Image.asset(historyItem.imagePath),
                            title: Text(
                              historyItem.title,
                              style: const TextStyle(
                                fontFamily: 'NexaBold',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  historyItem.date,
                                  style: const TextStyle(
                                    fontFamily: 'NexaRegular',
                                    fontSize: 12,
                                    color: Color(0xFF304A93),
                                  ),
                                ),
                                Text(
                                  historyItem.jam,
                                  style: const TextStyle(
                                    fontFamily: 'NexaRegular',
                                    fontSize: 12,
                                    color: Color(0xFF304A93),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
