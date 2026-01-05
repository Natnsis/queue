import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(12),
              elevation: 2,
            ),
            child: const Icon(CupertinoIcons.arrow_left),
          ),
        ],
      ),
    );
  }
}
