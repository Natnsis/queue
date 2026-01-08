import "package:flutter/material.dart";
import "package:queue/onboarding.dart";
import "package:queue/protected/tab.holder.dart";
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://lwsfmgkvpkcrjhhxjhdu.supabase.co',
    anonKey: 'sb_publishable_E-8ysutEL7rdr9bAIvciaA_x3Ai84pA',
  );
  runApp(QueueApp());
}

class QueueApp extends StatelessWidget {
  const QueueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final session = Supabase.instance.client.auth.currentSession;

        if (session != null) {
          return const Tabs();
        } else {
          return const Onboarding();
        }
      },
    );
  }
}
