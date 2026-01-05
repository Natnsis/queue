import "package:flutter/material.dart";

class Slider2 extends StatelessWidget {
  final VoidCallback onNext;

  const Slider2({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    print("Skip clicked");
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Column(
              children: const [
                Text(
                  "Scan. Queue. Relax.",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "Scan the QR code to join the line instantly no registration, no waiting around.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Center(child: Image.asset("assets/images/qr.png")),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: h * 0.07,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: onNext, // 👈 use the callback here
                child: const Text("Continue", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
