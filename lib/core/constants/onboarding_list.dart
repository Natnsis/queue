class OnboardingData {
  final String image;
  final String title;
  final String description;

  const OnboardingData({
    required this.image,
    required this.title,
    required this.description,
  });
}

const List<OnboardingData> onboardingList = [
  OnboardingData(
    image: "assets/home.jpg",
    title: "Skip the Wait, Not the Fun.",
    description:
        "Join queues remotely and track your progress in real-time. Your time is too valuable for physical lines.",
  ),
  OnboardingData(
    image: "assets/queue.jpg",
    title: "Scan and Step Away.",
    description:
        "Simply scan a QR code at the entrance or search for your favorite spots nearby to grab a spot in line instantly.",
  ),
  OnboardingData(
    image: "assets/notification.jpg",
    title: "Live Updates, Zero Stress.",
    description:
        "Get notified when it’s almost your turn. We’ll ping you when you’re 3rd in line so you can head back.",
  ),
  OnboardingData(
    image: "assets/notification.jpg",
    title: "You’re Up Next!",
    description:
        "Show your digital ticket at the counter and enjoy your service. No paper, no shouting, no hassle.",
  ),
];
