import 'package:flutter/material.dart';

import '../screens/agenda_screen.dart';
import '../screens/ijin_screen.dart';
import '../screens/presensi_screen.dart';
import '../screens/profiil_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavbar();
}

class BottomNavbar extends State<BottomNav> {
  int currentIndex = 0;
  final List<Widget> pages = [
    const PresensiView(),
    const AgendaView(),
    const IjinView(),
    const ProfilView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(154, 231, 230, 230),
        backgroundColor: const Color(0xFF304A93),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_rounded),
            label: 'Presensi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Ijin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
