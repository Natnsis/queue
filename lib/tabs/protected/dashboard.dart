import "package:flutter/material.dart";
import "package:queue/tabs/protected/profile.dart";
import "package:queue/widgets/header.dart";

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
              Container(height: 400, child: Center(child: Text('Section 1'))),
              Container(
                height: 500,
                color: Colors.red,
                child: Center(child: Text('Section 2')),
              ),
              Container(
                height: 600,
                color: Colors.orange,
                child: Center(child: Text('Section 3')),
              ),
              // Add more widgets → total height > screen → scrolling enabled
            ],
          ),
        ),
      ),
    );
  }
}
