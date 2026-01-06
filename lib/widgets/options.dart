import "package:flutter/material.dart";

class Options extends StatelessWidget {
  const Options({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton.icon(
          onPressed: () {},
          icon: Image.asset('assets/images/google.png', height: 24, width: 24),
          label: const Text(
            'Sign up with Google',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          style: FilledButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black87,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: Colors.grey),
            ),
            minimumSize: const Size(double.infinity, 50),
          ),
        ),
      ],
    );
  }
}
