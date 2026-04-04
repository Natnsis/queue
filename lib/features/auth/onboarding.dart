import 'package:flutter/material.dart';
import 'package:queue/core/constants/onboarding_list.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onboardingList.length,
          itemBuilder: (context, index) {
            final item = onboardingList[index];
            return Column(
              children: [
                Image.asset(item.image),
                Text(item.title),
                Text(item.description),
              ],
            );
          },
        ),
      ),
    );
  }
}
