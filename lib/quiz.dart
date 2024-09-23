import 'package:flutter/material.dart';
import 'package:simple_quiz_app/questions_screen.dart';
import 'package:simple_quiz_app/screen_start.dart';

class QuizDart extends StatefulWidget {
  const QuizDart({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizDartState createState() => _QuizDartState();
}
// @override
//   State<QuizDart> CreateState() {
//     return __QuizDartState();
//   }
// }

class _QuizDartState extends State<QuizDart> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = ScreenStart(SwitchScreen);
    super.initState();
  }

  // ignore: non_constant_identifier_names
  void SwitchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 228, 7, 7),
              Color.fromARGB(255, 247, 196, 196)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
