import 'package:flutter/material.dart';

import 'quiz.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Quiz(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
    );
  }
}

// First option code
/* class QuizApp extends MaterialApp {
  QuizApp({super.key})
      : super(
          home: const HomePage(),
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors.deepPurple,
          ),
        );
} */