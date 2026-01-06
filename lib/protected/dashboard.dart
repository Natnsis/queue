import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                    height: 35,
                    width: 35,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Queue",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //scanner
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.document_scanner,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Center(
                              child: Text(
                                'No Active Queue',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Center(
                              child: Text(
                                'scan qr code to join queue',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Scan Qr Code',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    //quick actions
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Quick Actions",
                            style: TextStyle(),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //qr
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 12,
                              ),
                              child: Column(
                                children: [
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(
                                          Icons.document_scanner,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Center(child: Text("Scan QR")),
                                  SizedBox(height: 5),
                                  Center(child: Text("join queue")),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),

                          //queue
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 12,
                              ),
                              child: Column(
                                children: [
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(
                                          Icons.document_scanner,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Center(child: Text("My Queue")),
                                  SizedBox(height: 5),
                                  Center(child: Text("join queue")),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
