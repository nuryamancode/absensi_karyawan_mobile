import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class AgendaView extends GetView {
  const AgendaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 222, 242),
      appBar: AppBar(
        title: const Text(
          'Agenda Karyawan',
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
        onRefresh: () async {},
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.15,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, spreadRadius: 3, color: Colors.black12)
                ],
                color: Colors.red,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Focus On Work Agenda',
                            style: TextStyle(
                                fontFamily: 'NexaBold',
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Text(
                              'Selalu melihat agenda kamu agar bisa mengetahui jadwal-jadwal terdekat dan juga bisa melihat penugasan kamu selanjutnya',
                              style: TextStyle(
                                  fontFamily: 'NexaRegular',
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/image/ilus3.png',
                      width: 110,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SfCalendar(
                view: CalendarView.week,
                todayHighlightColor: Colors.red,
                backgroundColor: Colors.white,
                showNavigationArrow: true,
                cellBorderColor: Colors.black,
                showWeekNumber: true,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
