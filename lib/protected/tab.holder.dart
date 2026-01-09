import 'package:flutter/material.dart';
import 'package:queue/protected/home.dart';
import 'package:queue/protected/profile.dart';
import 'package:queue/protected/queue.dart';
import 'package:queue/protected/scan.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  static _TabsState? of(BuildContext context) =>
      context.findAncestorStateOfType<_TabsState>();

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentTab = 0;

  final List<Widget> _screens = [
    const Home(),
    const Scan(),
    const Queue(),
    const Profile(),
  ];

  // PUBLIC METHOD: switch tabs
  void switchTab(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentTab],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 8,
          selectedItemColor: const Color(0xFF4361ee),
          unselectedItemColor: const Color(0xFF94A3B8),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: Color(0xFF1e293b),
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: Color(0xFF64748b),
          ),
          currentIndex: _currentTab,
          onTap: (index) {
            switchTab(index);
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 22),
              activeIcon: Icon(Icons.home, size: 22),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_outlined, size: 22),
              activeIcon: Icon(Icons.qr_code, size: 22),
              label: "Scan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.queue_outlined, size: 22),
              activeIcon: Icon(Icons.queue, size: 22),
              label: "Queue",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 22),
              activeIcon: Icon(Icons.person, size: 22),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
