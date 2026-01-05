import 'package:flutter/material.dart';
import 'package:queue/SingleSliders/slider1.dart';
import 'package:queue/SingleSliders/slider2.dart';
import 'package:queue/SingleSliders/slider3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _Onboarding();
}

class _Onboarding extends State<Onboarding> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Slider1(onNext: nextPage),
        Slider2(onNext: nextPage),
        Slider3(),
      ],
    );
  }
}
