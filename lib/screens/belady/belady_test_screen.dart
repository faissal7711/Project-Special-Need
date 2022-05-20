import 'package:flutter/material.dart';
import '../../components/quiz.dart';
import '../../components/quiz_controller.dart';
import '../../components/quiz_page.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../services/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/main_drawer.dart';
import '../../widgets/web_view.dart';
import 'belady_sanaf_test_screen.dart';
import 'belady_wassal_test_screen.dart';

class BeladyTestScreen extends StatelessWidget {
  static const routeName = '/belady_test_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
//      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[1].title,style: StyleTitle,),
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
              heroTag: 'belady1',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/choose.ogg');
                QuizControllerImageNew.quiz_exam = quiz_belady_exam1
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
                Navigator.of(context).pushNamed(QuizImageNew.routeName);
              },
              text: 'النشاط اﻷول(المطابقة)',
            ),
            CustomButton(
              heroTag: 'belady2',
              onPressed: () {
                QuizControllerImageNew.quiz_exam = quiz_belady_chose
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
              heroTag: 'belady3',
              onPressed: () {
//                playMusic(pathAudio: 'assets/audio/groups.ogg');
                Navigator.of(context).pushNamed(BeladySanafTestScreen.routeName);
              },
              text: 'النشاط الثالث(التصنيف)',
            ),
            CustomButton(
              heroTag: 'belady4',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/word_formation.ogg');
                WebViewLoad.title='النشاط الرابع(رتب الحروف)';
                WebViewLoad.initialUrl ='32596864';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الرابع(رتب الحروف)',
            ),
            CustomButton(
              heroTag: 'belady5',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/missing_char.ogg');
                QuizControllerImageNew.quiz_exam = quiz_belady_missing_char
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
                Navigator.of(context).pushNamed(QuizImageNew.routeName);
//                https://wordwall.net/resource/32574852
              },
              text: '(اكمل الحرف الناقص)',
            ),
//            CustomButton(
//              heroTag: 'belady6',
//              onPressed: () {
//                QuizControllerImageNew.quiz_exam = quiz_q_a
//                    .map(
//                      (quiz) => Quiz(
//                      audio: quiz['audio'],
//                      id: quiz['id'],
//                      quiz: quiz['quiz'],
//                      ask: quiz['ask'],
//                      optional: quiz['optional'],
//                      answer: quiz['answer']),
//                )
//                    .toList();
////                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
//                playMusic(pathAudio: 'assets/audio/choose.ogg');
//                Navigator.of(context).pushNamed(QuizImageNew.routeName);
//              },
//              text: 'النشاط السادس(سوال وجواب)',
//            ),
            CustomButton(
              heroTag: 'belady7',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/world_order.ogg');
                WebViewLoad.title='النشاط السابع(كون جملة)';
                WebViewLoad.initialUrl ='32565124';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط السادس(كون جملة)',
            ),
            CustomButton(
              heroTag: 'belady8',
              onPressed: () {
//                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
                Navigator.of(context).pushNamed(BeladyWassalTestScreen.routeName);
              },
              text: 'النشاط السابع(وصل)',
            ),
          ],
        ),
      ),
    );
  }
}


//   32565124