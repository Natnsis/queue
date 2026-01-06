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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Quick Actions",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

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
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(
                                          Icons.location_on,
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
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Nearby Queues",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Container(
                      height: 100,
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
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text(
                                      "City Hospital - General",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "down town medical center",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.timer_rounded, size: 15),
                                            Text("25mins"),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Row(
                                          children: [
                                            Icon(Icons.people, size: 15),
                                            Text("waiting"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Join",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
