import 'package:flutter/material.dart';
import '../../services/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/main_drawer.dart';
import '../../widgets/web_view.dart';

class FinalRevisionTestScreen extends StatelessWidget {
  static const routeName = '/final_revision_test_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('اﻷختبار النهائي'),
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
            heroTag: 'library1',
            onPressed: () {
              playMusic(pathAudio: 'assets/audio/drag.ogg');
              WebViewLoad.title='النشاط اﻷول(المطابقة)';
              WebViewLoad.initialUrl ='32565929';
              Navigator.of(context).pushNamed(WebViewLoad.routeName);
            },
            text: 'النشاط اﻷول(المطابقة)',
          ),
//            CustomButton(
//              heroTag: 'library_1',
//              onPressed: () {
//                QuizControllerImageNew.quiz_exam = quiz_qanatir
//                    .map(
//                      (quiz) => Quiz(
////                      audio: quiz['audio'],
//                      id: quiz['id'],
//                      quiz: quiz['quiz'],
//                      ask: quiz['ask'],
//                      optional: quiz['optional'],
//                      answer: quiz['answer']),
//                )
//                    .toList();
//                playMusic(pathAudio: 'assets/audio/choose.ogg');
//                Navigator.of(context).pushNamed(QuizImageNew.routeName);
//              },
//              text: 'النشاط الثاني(اختر)',
//            ),
          CustomButton(
            heroTag: 'library_1',
            onPressed: () {
              playMusic(pathAudio: 'assets/audio/choose.ogg');
              WebViewLoad.title='النشاط الثاني(اختر)';
              WebViewLoad.initialUrl ='32570945';
              Navigator.of(context).pushNamed(WebViewLoad.routeName);
            },
            text: 'النشاط الثاني(اختر)',
          ),
          CustomButton(
            heroTag: 'library_2',
            onPressed: () {
              playMusic(pathAudio: 'assets/audio/groups.ogg');
              WebViewLoad.title='النشاط الثالث(التصنيف)';
              WebViewLoad.initialUrl ='32567347';
              Navigator.of(context).pushNamed(WebViewLoad.routeName);
            },
            text: 'النشاط الثالث(التصنيف)',
          ),
          CustomButton(
            heroTag: 'library_3',
            onPressed: () {
              playMusic(pathAudio: 'assets/audio/world_order.ogg');
              WebViewLoad.title='النشاط الرابع(رتب الحروف)';
              WebViewLoad.initialUrl ='32564703';
              Navigator.of(context).pushNamed(WebViewLoad.routeName);
            },
            text: 'النشاط الرابع(رتب الحروف)',
          ),
//            CustomButton(
//              heroTag: 'library_4',
//              onPressed: () {
//                QuizControllerImageNew.quiz_exam = quiz_qanatir_missing_char
//                    .map(
//                      (quiz) => Quiz(
////                      audio: quiz['audio'],
//                      id: quiz['id'],
//                      quiz: quiz['quiz'],
//                      ask: quiz['ask'],
//                      optional: quiz['optional'],
//                      answer: quiz['answer']),
//                )
//                    .toList();
//                playMusic(pathAudio: 'assets/audio/missing_char.ogg');
//                Navigator.of(context).pushNamed(QuizImageNew.routeName);
//              },
//              text: '(اكمل الحرف الناقص)',
//            ),
          CustomButton(
            heroTag: 'library_4',
            onPressed: () {
              playMusic(pathAudio: 'assets/audio/missing_char.ogg');
              WebViewLoad.title='(اكمل الحرف الناقص)';
              WebViewLoad.initialUrl ='32594877';
              Navigator.of(context).pushNamed(WebViewLoad.routeName);
            },
            text: '(اكمل الحرف الناقص)',
          ),
          CustomButton(
            heroTag: 'library-303',
            onPressed: () {
              playMusic(pathAudio: 'assets/audio/connect_words.ogg');
              WebViewLoad.title='النشاط السادس(رتب الكلمات)';
              WebViewLoad.initialUrl ='32564185';
              Navigator.of(context).pushNamed(WebViewLoad.routeName);
            },
            text: 'النشاط السادس(رتب الكلمات)',
          ),
          CustomButton(
            heroTag: 'library-33',
            onPressed: () {
              playMusic(pathAudio: 'assets/audio/connect_words.ogg');
              WebViewLoad.title='النشاط السابع(وصل)';
              WebViewLoad.initialUrl ='32566597';
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
