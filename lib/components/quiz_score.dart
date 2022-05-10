import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/theme.dart';
import 'quiz_controller.dart';

class QuizScore extends StatelessWidget {
  static const routeName = '/score_screen';
  @override
  Widget build(BuildContext context) {
    QuizControllerImage _qnController = Get.put(QuizControllerImage());
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
              '${_qnController.numcheckAns}/${_qnController.quiz.length}',
              style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () {
                Get.offAllNamed('/');
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
