import "package:flutter/material.dart";
import "package:queue/onboarding.dart";

void main() {
  runApp(QueueApp());
}

class QueueApp extends StatelessWidget {
  const QueueApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Onboarding());
  }
}
