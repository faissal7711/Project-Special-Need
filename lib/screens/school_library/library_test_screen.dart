import 'package:flutter/material.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../services/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/main_drawer.dart';
import 'library_screen.dart';
import '../vedio_screen.dart';

class LibraryTestScreen extends StatelessWidget {
  static const routeName = '/library_test_screen';
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
              text: 'اﻷختبار اﻷول(المطابقة)',
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
              text: 'اﻷختبار الثاني(اختر)',
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
              text: 'اﻷختبار الثالث(التصنيف)',
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
              text: 'اﻷختبار الرابع(رتب الجمل)',
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
              text: '(اكمل الحرف الناقص)',
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
              text: 'اﻷختبار السادس(وصل)',
//            description: '',
            ),
            CustomButton(
              heroTag: 'library-3',
              color: KButtonColor1,
//            context: context,
              onPressed: () {
//                Navigator.of(context).pushNamed(NewYearMainScreen.routeName);
              },
              text: 'اﻷختبار السابع(كون جملة)',
//            description: '',
            ),
          ],
        ),
      ),
    );
  }
}
