import 'package:flutter/material.dart';
import 'package:queue/widgets/queue.history.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // HEADER — refined with gradient or soft tone
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF4361ee),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(24),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Scan QR Code",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Position your camera inside the frame",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          // BODY
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 28, 20, 20),
              child: Column(
                children: [
                  // SCAN FRAME — elegant, minimal
                  Container(
                    height: 240,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF4361ee).withOpacity(0.4),
                        width: 2,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Dark preview area
                          Container(
                            height: 200,
                            width: 200,
                            color: Colors.black,
                          ),
                          // Scanner icon
                          const Icon(
                            Icons.qr_code_scanner,
                            color: Colors.white,
                            size: 52,
                          ),
                          // Optional: semi-transparent overlay corners (like real scanner)
                          // (We’ll keep it clean for now per your request)
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // ACTION BUTTONS — primary + secondary
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Primary: Scan Now
                      SizedBox(
                        width: 160,
                        child: FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: const Color(0xFF4361ee),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text(
                            "Scan Now",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 16),

                      // Secondary: Upload from gallery
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.image,
                            color: Colors.black87,
                            size: 28,
                          ),
                          onPressed: () {},
                          splashRadius: 24,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 36),

                  // HISTORY SECTION
                  const History(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
