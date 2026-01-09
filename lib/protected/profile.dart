import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:queue/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: Column(
          children: [
            // HEADER — consistent with other screens
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: const Color(0xFF4361ee),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(24),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Icon(Icons.settings, color: Colors.white, size: 22),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(18, 24, 18, 16),
                child: Column(
                  children: [
                    // USER CARD
                    Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            blurRadius: 12,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 32,
                                backgroundImage: AssetImage(
                                  "assets/images/profile.png",
                                ),
                              ),
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sarah Johnson",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF1e293b),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "sarah.johnson@email.com",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xFF64748b),
                                    ),
                                  ),
                                  Text(
                                    "+1 (555) 123-4567",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xFF64748b),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 22),

                          // STATS — refined colors & alignment
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              _StatItem(value: "47", label: "Total Queues"),
                              _StatItem(
                                value: "18 mins",
                                label: "Avg Wait Time",
                              ),
                              _StatItem(value: "4.8", label: "Rating"),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // QUICK ACTIONS HEADER
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quick Actions",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1e293b),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    // QUICK ACTIONS
                    Row(
                      children: [
                        _QuickAction(
                          icon: Icons.qr_code,
                          title: "My QR Code",
                          subtitle: "Show your code",
                        ),
                        const SizedBox(width: 14),
                        _QuickAction(
                          icon: Icons.bookmark,
                          title: "Saved Places",
                          subtitle: "Quick access",
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // QUEUE HISTORY HEADER
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Queue History",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1e293b),
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: const Color(0xFF4361ee),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    // HISTORY ITEMS
                    _QueueHistoryItem(
                      title: "City Hospital - General",
                      time: "Today, 10:30 AM",
                      duration: "25 mins",
                    ),
                    const SizedBox(height: 10),
                    _QueueHistoryItem(
                      title: "DMV Office",
                      time: "Yesterday, 2:15 PM",
                      duration: "42 mins",
                    ),
                    const SizedBox(height: 10),
                    _QueueHistoryItem(
                      title: "Restaurant - The Grill",
                      time: "Jan 15, 7:30 PM",
                      duration: "15 mins",
                    ),

                    SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFFEF4444)),
                          foregroundColor: const Color(0xFFEF4444),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        icon: const Icon(Icons.logout, size: 18),
                        label: const Text(
                          "Logout",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        onPressed: () async {
                          final confirm = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Confirm Logout"),
                              content: const Text(
                                "Are you sure you want to logout?",
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, false),
                                  child: const Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  child: const Text("Logout"),
                                ),
                              ],
                            ),
                          );

                          if (confirm != true) return;

                          try {
                            await Supabase.instance.client.auth.signOut();
                            final googleSignIn = GoogleSignIn();
                            if (await googleSignIn.isSignedIn()) {
                              await googleSignIn.signOut();
                            }
                            if (context.mounted) {
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (_) => const LoginScreen(),
                                ),
                                (route) => false,
                              );
                            }
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Logout failed: $e')),
                            );
                          }
                        },
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

// SMALL WIDGETS (REFINED)

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF4361ee), // Brand color for emphasis
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: const Color(0xFF64748b)),
        ),
      ],
    );
  }
}

class _QuickAction extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _QuickAction({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: const Color(0xFF4361ee), size: 24),
            const SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1e293b),
                fontSize: 14,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 12, color: const Color(0xFF64748b)),
            ),
          ],
        ),
      ),
    );
  }
}

class _QueueHistoryItem extends StatelessWidget {
  final String title;
  final String time;
  final String duration;

  const _QueueHistoryItem({
    required this.title,
    required this.time,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.location_city, color: const Color(0xFF4361ee), size: 20),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1e293b),
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF64748b),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                duration,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1e293b),
                ),
              ),
              Text(
                "Completed",
                style: TextStyle(
                  fontSize: 11,
                  color: const Color(0xFF10B981), // soft green (not harsh)
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
