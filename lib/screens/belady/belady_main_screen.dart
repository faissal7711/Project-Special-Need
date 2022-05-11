import 'package:flutter/material.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../services/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/main_drawer.dart';
import '../category_meals_screen.dart';
import 'belady_test_screen.dart';
import 'lesson_belady_screen.dart';
import '../vedio_screen.dart';

class BeladyMainScreen extends StatelessWidget {
  static const routeName = '/belady_main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          DUMMY_CATEGORIES[1].title,
          style: StyleTitle,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02,
          vertical: MediaQuery.of(context).size.height * 0.02,
        ),
        children: [
          CustomButton(
            heroTag: 'belady1',
            color: KButtonColor1,
//            context: context,
            onPressed: () {
              Navigator.of(context).pushNamed(LessonBeladyScreen.routeName);
            },
            text: 'شرح الدرس',
//            description: '',
          ),
//            SizedBox(
//              height: 10.0,
//            ),
          CustomButton(
            heroTag: 'belady_1',
            color: KButtonColor4,
//            context: context,
            onPressed: () {
              VideoScreen.url = 'https://youtu.be/XJ__hLoVsew';
              Navigator.of(context).pushNamed(VideoScreen.routeName);
            },
            text: 'فيديو توضيح',
//            description: '',
          ),
//            SizedBox(
//              height: 10.0,
//            ),
          CustomButton(
            heroTag: 'belady_job',
            color: KButtonColor4,
//            context: context,
            onPressed: () {
//                VideoScreen.url ='';
              Navigator.of(context)
                  .pushNamed(CategoryMealsScreen.routeName, arguments: 'job');
            },
            text: 'المهن',
//            description: '',
          ),
          CustomButton(
            heroTag: 'belady_10',
            color: KButtonColor4,
//            context: context,
            onPressed: () {
              VideoScreen.url = 'https://youtu.be/h9V_saw7I0U';
//              VideoScreen.title='التضاريس';
              Navigator.of(context).pushNamed(VideoScreen.routeName);
            },
            text: 'التضاريس',
//            description: '',
          ),
//            SizedBox(
//              height: 10.0,
//            ),
          CustomButton(
            heroTag: 'belady3',
            color: KButtonColor1,
//            context: context,
            onPressed: () {
                Navigator.of(context).pushNamed(BeladyTestScreen.routeName);
            },
            text: 'اﻹختبارات',
//            description: '',
          ),
        ],
      ),
    );
  }
}
