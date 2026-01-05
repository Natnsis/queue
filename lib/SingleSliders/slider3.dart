import "package:flutter/material.dart";
import "package:queue/login.dart";

class Slider3 extends StatelessWidget {
  const Slider3({super.key});
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(25),
                child: Image.asset(
                  "assets/images/order.png",
                  width: w,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),

            SizedBox(height: 10),
            Column(
              children: [
                Text(
                  "Everything in the Right Order",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),

                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Join the queue digitally and be served fairly, one by one.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
