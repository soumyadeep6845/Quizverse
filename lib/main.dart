import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/score/score_screen.dart';
import 'package:quiz_app/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizverse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ScoreScreen(),
    );
  }
}
