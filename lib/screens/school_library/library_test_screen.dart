import 'package:flutter/material.dart';
import '../../components/quiz.dart';
import '../../components/quiz_controller.dart';
import '../../components/quiz_page.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../services/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/web_view.dart';

class LibraryTestScreen extends StatelessWidget {
  static const routeName = '/library_test_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
//      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[2].title,style: StyleTitle,),
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
                WebViewLoad.initialUrl ='30976729';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط اﻷول(المطابقة)',
            ),
            CustomButton(
              heroTag: 'library_1',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/choose.ogg');
                QuizControllerImageNew.quiz_exam = quiz_lib_chose
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
              text: 'النشاط الثاني(اختر)',
            ),
            CustomButton(
              heroTag: 'library_2',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/groups.ogg');
                WebViewLoad.title='النشاط الثالث(التصنيف1)';
                WebViewLoad.initialUrl ='32563433';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الثالث(التصنيف 1)',
            ),
            CustomButton(
              heroTag: 'library_22',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/groups.ogg');
                WebViewLoad.title='النشاط الثالث(التصنيف)';
                WebViewLoad.initialUrl ='32564747';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الثالث(التصنيف 2)',
            ),
            CustomButton(
              heroTag: 'library_23',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/groups.ogg');
                WebViewLoad.title='النشاط الثالث(التصنيف)';
                WebViewLoad.initialUrl ='32570569';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الثالث(التصنيف 3)',
            ),
            CustomButton(
              heroTag: 'library_3',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/world_order.ogg');
                WebViewLoad.title='النشاط الرابع(رتب الجمل)';
                WebViewLoad.initialUrl ='32562322';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الرابع(رتب الجمل)',
            ),
            CustomButton(
              heroTag: 'library_4',
              onPressed: () {
                QuizControllerImageNew.quiz_exam = quiz_lib_missing_char
                    .map(
                      (quiz) => Quiz(
//                      audio: quiz['audio'],
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
              heroTag: 'library-3',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/word_formation.ogg');
                WebViewLoad.title='النشاط السادس(كون جملة)';
                WebViewLoad.initialUrl ='32568478';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط السادس(كون جملة)',
            ),
            CustomButton(
              heroTag: 'library-33',
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
                WebViewLoad.title='النشاط السابع(وصل)';
                WebViewLoad.initialUrl ='32568154';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط السابع(وصل)',
            ),
//            CustomButton(
//              heroTag: 'library-303',
//////              onPressed: () {
//                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
//                WebViewLoad.title='النشاط الثامن(وصل)';
//                WebViewLoad.initialUrl ='32566141';
//                Navigator.of(context).pushNamed(WebViewLoad.routeName);
//              },
//              text: 'النشاط الثامن(وصل)',
////            ),
          ],
        ),
      ),
    );
  }
}
