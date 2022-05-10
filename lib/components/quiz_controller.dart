//import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'quiz.dart';
import 'quiz_score.dart';

class QuizControllerImage extends GetxController
    with SingleGetTickerProviderMixin {
  List<Quiz> _quiz = quiz_exam
      .map(
        (quiz) => Quiz(
            id: quiz['id'],
            quiz: quiz['quiz'],
            ask: quiz['ask'],
            optional: quiz['optional'],
            answer: quiz['answer']),
      )
      .toList();

  List<Quiz> get quiz => this._quiz;

  int _selectAns;
  int get selectAns => this._selectAns;

  int _checkAns;
  int get checkAns => this._checkAns;

  bool _answered = false;
  bool get answered => this._answered;

  PageController _quizPage;
  PageController get pageController => this._quizPage;

  RxInt _quizNum = 1.obs;
  RxInt get quizNum => this._quizNum;

  int _numCheckAns = 0;
  int get numcheckAns => this._numCheckAns;

  @override
  void onInit() {
    _quizPage = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _numCheckAns = 0;
    _quizNum = 1.obs;
    _quizPage.reactive;
    _answered = false;
    _quizPage.dispose();
  }

  void correctAns(Quiz quiz, int selectedIndex, BuildContext context) {
    _answered = true;
    _checkAns = quiz.answer;
    _selectAns = selectedIndex;

    if (_checkAns == _selectAns) {
      _numCheckAns++;
      final snackbar = SnackBar(
        duration: Duration(milliseconds: 4000),
        backgroundColor: Colors.green,
        content: Text("الاجابة صحيحة", textAlign: TextAlign.center,),
      );
//      AudioPlayer rightAnswerSound = AudioPlayer();
//      rightAnswerSound.play('assets/audio/exelant.mp3');
      Scaffold.of(context).showSnackBar(snackbar);
    } else {
      final snackbar = SnackBar(
        duration: Duration(milliseconds: 4000),
        backgroundColor: Colors.red,
        content: Text("الاجابة خاطئه", textAlign: TextAlign.center,),
      );
      Scaffold.of(context).showSnackBar(snackbar);
    }
    update();

    Future.delayed(Duration(seconds: 2), () {
      nextQuiz(context);
    });
  }

  void nextQuiz(BuildContext context) {
    if (_quizNum.value != _quiz.length) {
      _answered = false;
      _quizPage.nextPage(
          duration: Duration(microseconds: 250), curve: Curves.fastOutSlowIn);
    } else {
      Navigator.of(context).pushNamed(QuizScore.routeName);
    }
  }

  void updateQuiz(int index) {
    _quizNum.value = index + 1;
  }
}
