// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../services/theme.dart';
import 'quiz_card.dart';
import 'quiz_controller.dart';

class QuizImageNew extends StatefulWidget {
  static const routeName = '/quiz_image_new';

  @override
  State<QuizImageNew> createState() => _QuizImageNewState();
}

class _QuizImageNewState extends State<QuizImageNew> {
//  static ;
  QuizControllerImageNew _quizController = Get.put(QuizControllerImageNew());
  QuizControllerImageNew _controller = Get.put(QuizControllerImageNew());

  @override
  void initState() {
    _quizController.initialized;
    _controller.initialized;
//    Future.delayed(Duration(seconds: 4), () {
//      playMusic(pathAudio: '${QuizControllerImageNew.quiz_exam[0].audio}');
//      print(QuizControllerImageNew.quiz_exam[0].audio);
//      playMusic(pathAudio: 'assets/audio/groups.ogg');
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              color: orangeColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text.rich(
                        TextSpan(
                          text: 'Quiz ${_quizController.quizNum.value}',
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: bold),
                          children: [
                            TextSpan(
                              text: '/${_quizController.quiz.length}',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 18, fontWeight: bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        _controller.nextQuiz(context);
                      },
                      child: Text(
                        'Next Quiz',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: orangeColor,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: _quizController.pageController,
                onPageChanged: _quizController.updateQuiz,
                itemCount: _quizController.quiz.length,
                itemBuilder: (context, index) =>
                    QuizCard(quiz: _quizController.quiz[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
