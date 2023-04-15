import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter is fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.arrow_right_alt_rounded),
          label: const Text('Start Quiz'),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
