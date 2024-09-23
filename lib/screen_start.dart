import 'package:flutter/material.dart';

class ScreenStart extends StatelessWidget {
  const ScreenStart(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.4,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),

          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(97, 67, 54, 244),
          ),

          const SizedBox(height: 80),
          const Text(
            'Lets learn flutter the fun way!!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 20, 20, 20),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Lets Start'))
        ],
      ),
    );
  }
}
