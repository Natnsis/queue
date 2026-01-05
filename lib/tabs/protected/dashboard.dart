import "package:flutter/material.dart";

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Queue',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      fixedSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/profile.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ],
              ),
              Container(
                height: 400,
                color: Colors.green,
                child: Center(child: Text('Section 1')),
              ),
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
