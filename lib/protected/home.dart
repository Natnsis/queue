import 'package:flutter/material.dart';
import 'package:queue/protected/tab.holder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Queue",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                const Spacer(),
              ],
            ),

            const SizedBox(height: 28),

            // BODY
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _noActiveQueueCard(context),
                    const SizedBox(height: 32),
                    _sectionTitle("Quick Actions"),
                    const SizedBox(height: 16),
                    _quickActions(context),
                    const SizedBox(height: 32),
                    _sectionTitle("Nearby Queues"),
                    const SizedBox(height: 16),
                    _nearbyQueueCard(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: Colors.black87,
      ),
    );
  }

  // --------------------
  // NO ACTIVE QUEUE CARD
  // --------------------
  Widget _noActiveQueueCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F4FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: const Color(0xFF4361ee),
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Icon(
              Icons.document_scanner,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "No Active Queue",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            "Scan a QR code to join a queue instantly.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 180,
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF4361ee),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
              ),
              onPressed: () {
                // Switch to Scan tab (index 1)
                Tabs.of(context)?.switchTab(1);
              },
              child: const Text(
                "Scan QR Code",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // --------------------
  // QUICK ACTIONS
  // --------------------
  Widget _quickActions(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _QuickActionCard(
            tabIndex: 1, // Scan tab
            icon: Icons.document_scanner,
            color: const Color(0xFF4361ee),
            title: "Scan QR",
            subtitle: "Join queue",
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _QuickActionCard(
            tabIndex: 2, // My Queue tab
            icon: Icons.location_on_outlined,
            color: const Color(0xFF7E3AFF),
            title: "My Queue",
            subtitle: "View status",
          ),
        ),
      ],
    );
  }

  // --------------------
  // NEARBY QUEUE CARD
  // --------------------
  Widget _nearbyQueueCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF4361ee),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.location_on, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "City Hospital - General",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Downtown Medical Center",
                  style: TextStyle(fontSize: 12, color: Color(0xFF64748b)),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.timer, size: 14, color: Color(0xFF64748b)),
                    SizedBox(width: 4),
                    Text(
                      "25 mins",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64748b),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 12),
                    Icon(Icons.people, size: 14, color: Color(0xFF64748b)),
                    SizedBox(width: 4),
                    Text(
                      "Waiting",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64748b),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF4361ee),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            onPressed: () {
              // Switch to Scan tab
              Tabs.of(context)?.switchTab(1);
            },
            child: const Text(
              "Join",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

// --------------------
// QUICK ACTION CARD
// --------------------
class _QuickActionCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;
  final int tabIndex; // <-- now using tab index

  const _QuickActionCard({
    super.key,
    required this.tabIndex,
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Tabs.of(context)?.switchTab(tabIndex);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF64748b),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
