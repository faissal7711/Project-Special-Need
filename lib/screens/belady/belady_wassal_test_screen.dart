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

class BeladyWassalTestScreen extends StatelessWidget {
  static const routeName = '/belady_wassal_test_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
//      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          'النشاط الثامن(وصل)',
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
              heroTag: 'library1',
              color: KButtonColor1,
//            context: context,
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
                WebViewLoad.title='النشاط اﻷول';
                WebViewLoad.initialUrl ='32568396';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط اﻷول',
//            description: '',
            ),
//            SizedBox(
//              height: 10.0,
//            ),
            CustomButton(
              heroTag: 'library_1',
              color: KButtonColor4,
//            context: context,
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
                WebViewLoad.title='النشاط الثاني';
                WebViewLoad.initialUrl ='32568396';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الثاني',
//            description: '',
            ),
//            SizedBox(
//              height: 10.0,
//            ),
            CustomButton(
              heroTag: 'library_2',
              color: KButtonColor4,
//            context: context,
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
                WebViewLoad.title='النشاط الثالث';
                WebViewLoad.initialUrl ='32569189';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الثالث',
//            description: '',
            ),
//            SizedBox(
//              height: 10.0,
//            ),
            CustomButton(
              heroTag: 'library_3',
              color: KButtonColor4,
//            context: context,
              onPressed: () {
                playMusic(pathAudio: 'assets/audio/connect_words.ogg');
                WebViewLoad.title='النشاط الرابع';
                WebViewLoad.initialUrl ='32574852';
                Navigator.of(context).pushNamed(WebViewLoad.routeName);
              },
              text: 'النشاط الرابع',
//            description: '',
            ),
          ],
        ),
      ),
    );
  }
}
//32565462
// wassal
