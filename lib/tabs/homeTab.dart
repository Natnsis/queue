import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:queue/tabs/SingleTabs/HomeSingleTab.dart';
import 'package:queue/tabs/SingleTabs/QueuesTab.dart';
import 'package:queue/tabs/SingleTabs/ProfileTab.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({super.key});

  @override
  State<MainTabs> createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  final NotchBottomBarController _controller = NotchBottomBarController(
    index: 0,
  );

  final List<Widget> _pages = const [
    HomeSingleTab(),
    QueuesTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedNotchBottomBarView(
        controller: _controller,
        children: _pages,
      ),

      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        kIconSize: 24, // ✅ REQUIRED
        color: Colors.white,
        notchColor: Colors.black,
        showLabel: false,
        bottomBarWidth: MediaQuery.of(context).size.width,
        durationInMilliSeconds: 300,

        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(CupertinoIcons.house, color: Colors.grey),
            activeItem: Icon(CupertinoIcons.house_fill, color: Colors.white),
          ),
          BottomBarItem(
            inActiveItem: Icon(CupertinoIcons.list_bullet, color: Colors.grey),
            activeItem: Icon(CupertinoIcons.list_bullet, color: Colors.white),
          ),
          BottomBarItem(
            inActiveItem: Icon(CupertinoIcons.person, color: Colors.grey),
            activeItem: Icon(CupertinoIcons.person_fill, color: Colors.white),
          ),
        ],

        onTap: (index) {
          _controller.jumpTo(index);
        },
      ),
    );
  }
}
