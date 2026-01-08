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
  final session = Supabase.instance.client.auth.currentSession;

  runApp(QueueApp(isLoggedIn: session != null));
}

class QueueApp extends StatelessWidget {
  final bool isLoggedIn;
  const QueueApp({super.key, required this.isLoggedIn});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? const Tabs() : const Onboarding(),
    );
  }
}
