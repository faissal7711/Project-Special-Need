import 'package:flutter/material.dart';
import '../../components/quiz_page.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../services/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/main_drawer.dart';
import 'new_year_screen.dart';
import '../vedio_screen.dart';

class NewYearMainScreen extends StatelessWidget {
  static const routeName = '/subject_main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[0].title,style: StyleTitle),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02),
          children: [
            CustomButton(
              heroTag: 'new_year1',
              color: KButtonColor1,
//            context: context,
              onPressed: () {
                Navigator.of(context).pushNamed(LessonNewYearScreen.routeName);
              },
              text: 'شرح الدرس',
//            description: '',
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomButton(
              heroTag: 'new_year2',
              color: KButtonColor4,
//            context: context,
              onPressed: () {
                VideoScreen.url ='https://youtu.be/uSeCmFyRn4Y';
                Navigator.of(context).pushNamed(VideoScreen.routeName);
              },
              text: 'العودة الي المدرسة',
//            description: '',
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomButton(
              heroTag: 'new_year3',
              color: KButtonColor1,
//            context: context,
              onPressed: () {
//                Get.to(QuizImage());
                Navigator.of(context).pushNamed(QuizImage.routeName);
              },
              text: 'اﻹختبارات',
//            description: '',
            ),
          ],
        ),
      ),
    );
  }
}
