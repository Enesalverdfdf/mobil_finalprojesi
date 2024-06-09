import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          // Onboarding sayfalarını buraya ekleyin
          OnboardingPage(
            title: 'İstinyeGallery1',
            description: 'ISUG1',
            imagePath: 'assets/image/ISUG1.jpg',
          ),
          OnboardingPage(
            title: 'İstinyeGallery1',
            description: 'ISUG1',
            imagePath: 'assets/image/ISUG1.jpg',
          ),
          OnboardingPage(
            title: 'İstinyeGallery2',
            description: 'ISUG2',
            imagePath: 'assets/image/ISUG2.jpg',
          ),
          OnboardingPage(
            title: 'İstinyeGallery3',
            description: 'ISUG3',
            imagePath: 'assets/image/ISUG3.jpg',
          ),
          OnboardingPage(
            title: 'İstinyeGallery4',
            description: 'ISUG4',
            imagePath: 'assets/image/ISUG4.jpg',
          ),
          OnboardingPage(
            title: 'İstinyeGallery5',
            description: 'ISUG5',
            imagePath: 'assets/image/ISUG5.jpg',
          ),
          // İstediğiniz kadar onboarding sayfası ekleyebilirsiniz
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
