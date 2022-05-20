// ignore_for_file: deprecated_member_use, non_constant_identifier_names, missing_return

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../services/theme.dart';
import 'quiz.dart';
import 'quiz_score.dart';

class QuizControllerImageNew extends GetxController
    with SingleGetTickerProviderMixin {
  static List<Quiz> quiz_exam;

//  static List<String> audioList;

//  List<Quiz> _quiz = quiz_exam1.map(
//        (quiz) => Quiz(
//            id: quiz['id'],
//            quiz: quiz['quiz'],
//            ask: quiz['ask'],
//            optional: quiz['optional'],
//            answer: quiz['answer']),
//      ).toList();

  List<Quiz> get quiz => quiz_exam;

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

  int get numCheckAns => this._numCheckAns;

  @override
  // TODO: implement initialized
  bool get initialized {
    Future.delayed(Duration(seconds: 5), () {
//      playMusic(pathAudio: '${quiz_exam[0].audio}');
      quiz_exam[0].audio != null
          ? playMusic(pathAudio: '${quiz_exam[0].audio}')
          : printError(info: '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&');
    });
    super.initialized;
    _numCheckAns = 0;
    _quizNum = 1.obs;
    _answered = false;
  }

  @override
  void onInit() {
    _quizPage = PageController();
    _numCheckAns = 0;
    _quizNum = 1.obs;
    _answered = false;
//    _quizPage.dispose();
    super.onInit();
  }

  // refresh to page in each time
//  @override
  void refresh() {
//    print('sssssssssssss ${quiz_exam[0].audio} ssssssssssssss');
////    print('ssssssssssssss{quiz[_quizNum.value].audio}ssssssssssssss');
//    BuildContext context;
    if (_quizNum.value < quiz_exam.length)
      Future.delayed(Duration(seconds: 5), () {
        playMusic(pathAudio: '${quiz_exam[_quizNum.value].audio}');
      });
  }

  @override
  void onClose() {
    super.onClose();
    _numCheckAns = 0;
    _quizNum = 1.obs;
    _answered = false;
//    _quizPage.dispose();
  }

  void correctAns(Quiz quiz, int selectedIndex, BuildContext context) {
    var rng = Random();
    _answered = true;
    _checkAns = quiz.answer;
    _selectAns = selectedIndex;

    if (_checkAns == _selectAns) {
      _numCheckAns++;
      print('====================>${rng.nextInt(4)}');
      playMusic(pathAudio: 'assets/audio/true${rng.nextInt(4)}.mp3');
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 4000),
        backgroundColor: Colors.green,
        content: Text(
          "الاجابة صحيحة",
          textAlign: TextAlign.center,
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    } else {
      playMusic(pathAudio: 'assets/audio/wrong.mp3');
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 4000),
        backgroundColor: Colors.red,
        content: Text(
          "الاجابة خاطئه",
          textAlign: TextAlign.center,
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
    update();

    Future.delayed(Duration(seconds: 5), () {
      nextQuiz(context);
    });
  }

  void nextQuiz(BuildContext context) {
    if (_quizNum.value != quiz_exam.length) {
//      playMusic(pathAudio: 'assets/audio/foo.m4a');
      _answered = false;
      _quizPage.nextPage(
        duration: Duration(microseconds: 250),
        curve: Curves.fastOutSlowIn,
      );
    } else {
      Navigator.of(context).restorablePopAndPushNamed(QuizScoreNew.routeName);
    }
  }

  void updateQuiz(int index) {
//    playMusic(pathAudio: 'assets/audio/foo.m4a');
    _quizNum.value = index + 1;
  }
}
