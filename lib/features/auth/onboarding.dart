import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[60],
      body: Column(
        children: [
          Text(
            'Coffeee shop',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 40,
              color: Colors.brown,
              fontWeight: FontWeight(300),
            ),
          ),
          Image(image: AssetImage('assets/landing/coffee.jpg')),
          SizedBox(height: 20),
          SizedBox(
            width: 400,
            height: 50,
            child: FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.brown),
                foregroundColor: WidgetStatePropertyAll(Colors.white12),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight(200)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
