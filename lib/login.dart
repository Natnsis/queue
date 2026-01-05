import "package:flutter/material.dart";
import "package:queue/root/HomeTab.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Image.asset("assets/images/remind.png"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "You don’t wait. You live. We notify you✨",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Skip the lines and the stress. Get instant updates and walk in exactly when it’s your turn.",
              style: TextStyle(color: Colors.black54),
            ),
          ),

          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              width: double.infinity,
              height: h * 0.07,
              child: FilledButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeTab()),
                  );
                },
                icon: Image.asset(
                  'assets/images/google.png',
                  height: 24,
                  width: 24,
                ),
                label: const Text(
                  'Sign up with Google',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
