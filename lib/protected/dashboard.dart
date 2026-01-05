import "package:flutter/material.dart";
import "package:queue/widgets/header.dart";
import "package:queue/widgets/scan.dart";

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Header(),
              SizedBox(height: 20),
              Scan(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
