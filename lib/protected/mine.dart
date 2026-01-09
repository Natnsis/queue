import "package:flutter/material.dart";
import "package:queue/protected/tab.holder.dart";

class Mine extends StatelessWidget {
  const Mine({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4361ee),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tabs()),
                  );
                },
                child: Icon(Icons.arrow_left),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
