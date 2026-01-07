import "package:flutter/material.dart";

class Queue extends StatelessWidget {
  const Queue({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.lightBlue),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.timer, size: 20, color: Colors.white),
                    Text(
                      "Queue Status",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Real-Time updates",
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
