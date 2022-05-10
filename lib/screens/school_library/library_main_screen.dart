import 'package:flutter/material.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../services/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/main_drawer.dart';
import 'library_screen.dart';
import '../vedio_screen.dart';

class LibraryMainScreen extends StatelessWidget {
  static const routeName = '/library_main_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[2].title,style: StyleTitle,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.001),
          children: [
            CustomButton(
              heroTag: 'library1',
              color: KButtonColor1,
//            context: context,
              onPressed: () {
                Navigator.of(context).pushNamed(LessonLibraryScreen.routeName);
              },
              text: 'شرح الدرس',
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
                VideoScreen.url ='https://youtu.be/Ao3gZkIS0Mc';
                Navigator.of(context).pushNamed(VideoScreen.routeName);
              },
              text: 'فيديو عن المكتبة المدرسية',
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
                VideoScreen.url ='https://youtu.be/oaoJRh_-cGQ';
                Navigator.of(context).pushNamed(VideoScreen.routeName);
              },
              text: 'أداب المكتبة',
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
                VideoScreen.url ='https://youtu.be/AAv8tbtf0dU';
                Navigator.of(context).pushNamed(VideoScreen.routeName);
              },
              text: 'تغليف وتزيين الدفاتر',
//            description: '',
            ),
//            SizedBox(
//              height: 10.0,
//            ),
            CustomButton(
              heroTag: 'library_4',
              color: KButtonColor4,
//            context: context,
              onPressed: () {
                VideoScreen.url ='https://youtu.be/J9yLzzvtIdY';
                Navigator.of(context).pushNamed(VideoScreen.routeName);
              },
              text: 'منظم للمكتب واﻷدوات',
//            description: '',
            ),
//            SizedBox(
//              height: 10.0,
//            ),
            CustomButton(
              heroTag: 'library3',
              color: KButtonColor1,
//            context: context,
              onPressed: () {
//                Navigator.of(context).pushNamed(NewYearMainScreen.routeName);
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
