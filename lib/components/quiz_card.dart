// ignore_for_file: sdk_version_ui_as_code

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../services/theme.dart';
import 'optional.dart';
import 'quiz.dart';
import 'quiz_controller.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    Key key,
    @required this.quiz,
  }) : super(key: key);

  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    QuizControllerImageNew _controller = Get.put(QuizControllerImageNew());
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 0),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        decoration: BoxDecoration(
          //color: Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*Image.asset(
              quiz.quiz,
              height: 300,
              width: 500,
            ),*/
            const SizedBox(height: 20,),
            Text(
              quiz.ask,
              style: whiteTextStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 100,),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              children: [
                ...List.generate(quiz.optional.length, (index) {
                  //design for each card in screen
                  return Container(
                    height: 5000,
                    width: 5000,
                    child: Optional(
                      index: index,
                      image: quiz.optional[index],
                      press: () => _controller.correctAns(quiz, index, context),
                    ),
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
