import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/quiz.dart';
import '../../../services/theme.dart';
import 'quiz.dart';
import 'quiz_controller.dart';

class QuizScoreNew extends StatelessWidget {
  static const routeName = '/score_screen_new';

  play3times(){
    playMusic(pathAudio: 'assets/audio/wrong.mp3');
    Future.delayed(Duration(milliseconds: 1500), () {
      playMusic(pathAudio: 'assets/audio/wrong.mp3');
    });
    Future.delayed(Duration(milliseconds: 2800,), () {
      playMusic(pathAudio: 'assets/audio/wrong.mp3');
    });
  }

  @override
  Widget build(BuildContext context) {
    QuizControllerImageNew _qnController = Get.put(QuizControllerImageNew());
    _qnController.numCheckAns >= _qnController.quiz.length / 2
        ? playMusic(pathAudio: 'assets/audio/accept_result.mp3')
        : play3times();
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'نتيجة صحيحة',
              style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            ),
            Text(
              '${_qnController.numCheckAns}/${_qnController.quiz.length}',
              style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () {
//                Get.offAllNamed('/');
//                Get.key;
//                print(Get.rootController);
                Navigator.of(context).popAndPushNamed('/');
//                Navigator.of(context).popAndPushNamed('/');
              },
              child: Text(
                'الرجوع للقائمة الرئيسية',
                style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
