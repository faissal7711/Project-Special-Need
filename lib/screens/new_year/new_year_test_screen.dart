import 'package:flutter/material.dart';
import '../../components/quiz.dart';
import '../../components/quiz_controller.dart';
import '../../components/quiz_page.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../services/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/web_view.dart';

class NewYearTestScreen extends StatelessWidget {
  static const routeName = '/new_year_test_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
//      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          DUMMY_CATEGORIES[0].title,
          style: StyleTitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01),
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.001),
          children: [
            CustomButton(
              heroTag: 'new_year1',
              color: KButtonColor1,
              onPressed: () {
                QuizControllerImageNew.quiz_exam = quiz_new_year_exam1
                    .map(
                      (quiz) => Quiz(
                      audio: quiz['audio'],
                      id: quiz['id'],
                      quiz: quiz['quiz'],
                      ask: quiz['ask'],
                      optional: quiz['optional'],
                      answer: quiz['answer']),
                )
                    .toList();
                playMusic(pathAudio: 'assets/audio/drag.ogg');
                Navigator.of(context).pushNamed(QuizImageNew.routeName);
              },
              text: 'النشاط اﻷول(المطابقة)',
            ),
            CustomButton(
              heroTag: 'new_year_1',
              color: KButtonColor4,
              onPressed: () {
                QuizControllerImageNew.quiz_exam = quiz_new_year_chose
                    .map(
                      (quiz) => Quiz(
                          audio: quiz['audio'],
                          id: quiz['id'],
                          quiz: quiz['quiz'],
                          ask: quiz['ask'],
                          optional: quiz['optional'],
                          answer: quiz['answer']),
                    )
                    .toList();
                playMusic(pathAudio: 'assets/audio/choose.ogg');
                Navigator.of(context).pushNamed(QuizImageNew.routeName);
              },
              text: 'النشاط الثاني(اختر)',
            ),
            CustomButton(
              heroTag: 'new_year_2',
              color: KButtonColor4,
              onPressed: () {//32566518
                playMusic(pathAudio: 'assets/audio/groups.ogg');
                WebViewLoad.title='النشاط الثالث(التصنيف)';
                WebViewLoad.initialUrl ='32566518';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الثالث(التصنيف)',
            ),
            CustomButton(
              heroTag: 'new_year_3',
              color: KButtonColor4,
              onPressed: () {
              //32564247
                playMusic(pathAudio: 'assets/audio/world_order.ogg');
                WebViewLoad.title='النشاط الرابع(رتب الجمل)';
                WebViewLoad.initialUrl ='32564247';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الرابع(رتب الجمل)',
            ),
            CustomButton(
              heroTag: 'new_year_4',
              color: KButtonColor4,
              onPressed: () {
                QuizControllerImageNew.quiz_exam = quiz_new_year_missing_char
                    .map(
                      (quiz) => Quiz(
                      audio: quiz['audio'],
                      id: quiz['id'],
                      quiz: quiz['quiz'],
                      ask: quiz['ask'],
                      optional: quiz['optional'],
                      answer: quiz['answer']),
                )
                    .toList();
                playMusic(pathAudio: 'assets/audio/missing_char.ogg');
                Navigator.of(context).pushNamed(QuizImageNew.routeName);
              },
              text: '(اكمل الحرف الناقص)',
            ),
            CustomButton(
              heroTag: 'new_year3',
              color: KButtonColor1,
              onPressed: () {
                QuizControllerImageNew.quiz_exam = quiz_q_a
                    .map(
                      (quiz) => Quiz(
                      audio: quiz['audio'],
                      id: quiz['id'],
                      quiz: quiz['quiz'],
                      ask: quiz['ask'],
                      optional: quiz['optional'],
                      answer: quiz['answer']),
                )
                    .toList();
//                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
                playMusic(pathAudio: 'assets/audio/choose.ogg');
                Navigator.of(context).pushNamed(QuizImageNew.routeName);
              },
              text: 'النشاط رقم 6(سوال وجواب)',
//              text: 'النشاط السادس(وصل)',
            ),
//            CustomButton(
//              heroTag: 'new_year-3',
//              color: KButtonColor1,
//              onPressed: () {
//                playMusic(pathAudio: 'assets/audio/word_formation.ogg');
//                Navigator.of(context).pushNamed(QuizImageNew.routeName);
//              },
//              text: 'النشاط السابع(كون جملة)',
//            ),
            CustomButton(
              heroTag: 'new_year-33',
              color: KButtonColor1,
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
                WebViewLoad.title='النشاط السابع(وصل)';
                WebViewLoad.initialUrl ='32565462';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط السابع(وصل)',
            ),
          ],
        ),
      ),
    );
  }
}
//32565462
// wassal
