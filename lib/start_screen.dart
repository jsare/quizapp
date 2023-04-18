import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
        Text(
          'Learn Flutter is fun way!',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: startQuiz,
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
