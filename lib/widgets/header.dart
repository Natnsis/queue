import 'package:flutter/material.dart';
import 'package:queue/protected/profile.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Queue',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          },
          style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/profile.png",
              width: w * 0.15,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
