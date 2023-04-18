import 'package:flutter/material.dart';

import '../data/questions.dart';
import 'questions_screen.dart';
import 'start_screen.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswers = [];
  var _activeScreen = 'start-screen';

  @override
  void initState() {
    super.initState();
    _activeScreen = 'start-screen';
  }

  void _switchScreen() {
    setState(() {
      _activeScreen = 'question-screen';
    });
  }

  void _chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'result-screen';
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(_switchScreen);

    if (_activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: _chooseAnswer,
      );
    }

    if (_activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        choosenAnswers: _selectedAnswers,
        onRestart: _restartQuiz,
      );
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}
