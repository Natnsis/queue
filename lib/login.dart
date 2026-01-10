import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:queue/protected/tab.holder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              Image.asset(
                "assets/images/remind.png",
                height: 180,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 32),

              // Headline
              const Text(
                "You don’t wait. You live. We notify you✨",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 16),

              // Description
              const Text(
                "Skip the lines and the stress. Get instant updates and walk in exactly when it’s your turn.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: OutlinedButton.icon(
                  onPressed: () async {
                    /*
                    try {
                      final googleSignIn = GoogleSignIn(
                        scopes: ['email', 'profile'],
                        serverClientId:
                            '450302312622-e3r3jees653b76pbavk8k63odbhnfltv.apps.googleusercontent.com',
                      );

                      final googleUser = await googleSignIn.signIn();

                      if (googleUser == null) {
                        return;
                      }

                      final googleAuth = await googleUser.authentication;

                      final idToken = googleAuth.idToken;
                      final accessToken = googleAuth.accessToken;

                      if (idToken == null || accessToken == null) {
                        throw Exception('Missing Google auth token');
                      }

                      await Supabase.instance.client.auth.signInWithIdToken(
                        provider: OAuthProvider.google,
                        idToken: idToken,
                        accessToken: accessToken,
                      );

                      if (!context.mounted) return;
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => const Tabs()),
                      (route) => false,
                    );
                    } catch (e) {
                      debugPrint('Google login error: $e');
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Google sign-in failed')),
                      );
                    }
                    */
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tabs()),
                    );
                  },
                  icon: Image.asset(
                    'assets/images/google.png',
                    height: 20,
                    width: 20,
                  ),
                  label: const Text(
                    'Sign up with Google',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black87,
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
