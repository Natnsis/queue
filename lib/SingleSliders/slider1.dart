import "package:flutter/material.dart";

class Slider1 extends StatelessWidget {
  final VoidCallback onNext;

  const Slider1({super.key, required this.onNext});

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
                  onPressed: () {},
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
            Center(child: Image.asset("assets/images/crowd.png")),

            const SizedBox(height: 10),
            Column(
              children: const [
                Text(
                  "Skip the Line, Save Your Precious Time.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 15),
                Text(
                  "Join queues digitally and get notified when it’s your turn no standing, no stress.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: h * 0.07,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: onNext,
                child: const Text("Continue", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
