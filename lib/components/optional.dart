import 'package:meal_app/components/quiz_controller.dart';
import 'package:meal_app/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';

import 'quiz_controller.dart';

class Optional extends StatelessWidget {
  const Optional({
    Key key,
    this.image,
    this.index,
    this.press,
  }) : super(key: key);

  final String image;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizControllerImageNew>(
      init: QuizControllerImageNew(),
      builder: (qnController) {
        Color getRightColor() {
          if (qnController.answered) {
            if (index == qnController.checkAns) {
              return Colors.green;
            } else if (index == qnController.selectAns &&
                qnController.selectAns != qnController.checkAns) {
              return pinkColor;
            }
          }
          return white;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: 0,left: 0,right: 0,),
            padding: EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              border: Border.all(color: getRightColor(),width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              image,
//              'assets/images/quiz1.png',
              height: 100,
              width: 100,
            ),
          ),
        );
      },
    );
  }
}
