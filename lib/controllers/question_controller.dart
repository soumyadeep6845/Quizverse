import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/screens/score/score_screen.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map((question) => Question(
          id: question['id'],
          question: question['question'],
          answer: question['answer_index'],
          options: question['options']))
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAnswer;
  int get correctAnswer => this._correctAnswer;

  late int _selectedAnswer;
  int get selectedAnswer => this._selectedAnswer;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numberOfCorrectAnswers = 0;
  int get numberOfCorrectAnswers => this._numberOfCorrectAnswers;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = pageController;
    super.onInit();
  }

  @override
  void onClose() {
    _animationController.dispose();
    _pageController.dispose();

    super.onClose();
  }

  void checkAnswer(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAnswer = question.answer;
    _selectedAnswer = selectedIndex;
    if (_correctAnswer == _selectedAnswer) _numberOfCorrectAnswers++;
    _animationController.stop();
    update();

    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      _animationController.reset();

      _animationController.forward().whenComplete(nextQuestion);
    }
    else {
      Get.to(ScoreScreen());
    }
    
  }

  void updateQuestionNumber(int index) {
    _questionNumber.value = index + 1;
  }
}
