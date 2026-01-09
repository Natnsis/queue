import "package:flutter/material.dart";
import "package:queue/protected/tab.holder.dart";

class Mine extends StatelessWidget {
  const Mine({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tabs()),
              );
            },
            child: Icon(Icons.arrow_left),
          ),
        ],
      ),
    );
  }
}
