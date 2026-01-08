import 'package:flutter/material.dart';
import 'package:queue/login.dart';

class Slider3 extends StatelessWidget {
  const Slider3({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            // Image with consistent styling
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: SizedBox(
                height: h * 0.42,
                width: w,
                child: Image.asset(
                  "assets/images/order.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 36),

            // Headline
            Text(
              "Everything in the Right Order",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                height: 1.3,
              ),
            ),

            const SizedBox(height: 16),

            // Description text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Join the queue digitally and be served fairly, one by one.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  height: 1.4,
                ),
              ),
            ),

            const Spacer(),

            // Get Started button — consistent with previous screens
            SizedBox(
              width: double.infinity,
              height: 52,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFF4361ee),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
