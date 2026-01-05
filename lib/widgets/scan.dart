import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.qrcode),
          SizedBox(width: 10),
          Text("Scan QR"),
        ],
      ),
    );
  }
}
