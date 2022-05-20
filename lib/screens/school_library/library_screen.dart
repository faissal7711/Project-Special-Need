import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../services/theme.dart';

class LessonLibraryScreen extends StatelessWidget {
  static const routeName = 'lesson_library_screen';

  Widget buildContainerImage(BuildContext context, String imagePath) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(6.0),
      child: Image.asset(imagePath, fit: BoxFit.fill),
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(8.0),
//        image: DecorationImage(
//          image: Image.asset(imagePath).image,
//          fit: BoxFit.cover,
//        ),
//      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("شرح الدرس"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Background image of SideMenu (Drawer)
//          Image(
//            width: double.infinity,
//            height: double.infinity,
//            image: AssetImage('assets/images/bg_for _app.jpg'),
//            fit: BoxFit.fill,
//          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: [
                    Image.asset('assets/images/library_image1.jpeg'),
                    Image.asset('assets/images/library_image2.jpeg'),
//                    buildContainerImage(context,'assets/images/library_1.jpeg'),
//                    buildContainerImage(context,'assets/images/library_1.jpg'),
                  ],
                  //Slider Container properties
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                    initialPage: 0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Text(
                'في مدرستنا مكتبه كبيره ، اتفقت مع اصحابي ان نذهب إلى مكتبة المدرسه سويا لكي نقرأ الكتب ونكتب ونرسم ونسمع القصص الممتعه ولكن قبل ان نذهب اتفقنا معا ان نحافظ علي اداب المكتبه والا نرفع اصواتنا داخل المكتبه والا نأكل فيها وان نجلس بهدوء ونحافظ علي نظافة المكتبه،'
                    'وبعد ذلك ذهبنا الي مكتبة المدرسة مع معلمنا فدخلنا قاعتها الواسعه وشاهدنا أرفف رصت عليها الكتب ومنضده كبيره وطويله حولها مجموعه من الكراسي، وذهبت الى رف الكتب واخذت كتاب اعجبني كثيراا  فيه قصص لطيفه فكتبت رقمه واسمه على ورقه وذهبت الى امينه المكتبه التي كانت تجلس حول منضده في مدخل القاعه واعطيتها اسم الكتاب ورقمه، وبعد ذلك ذهبت  امينه المكتبه واحضرت لي  الكتاب  فاخذته وجلست على كرسي  اقرا في الكتاب بصمت وهدوء وبعد ان انتهيت من قراءه الكتاب اعدت الكتاب الى امينه المكتبه وشكرتها ثم خرجت مع زملائي مسرورا لاننا اصدقاء المكتبه،'
                    'فالمكتبه مكان جميل وممتع فيمكن ان نفعل في المكتبه اشياء كثيره جميله',
                  style: TextStyle(fontSize: 22,color: orangeColor),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
في مدرستنا مكتبه كبيره ، اتفقت مع اصحابي ان نذهب إلى مكتبة المدرسه سويا لكي نقرأ الكتب ونكتب ونرسم ونسمع القصص الممتعه ولكن قبل ان نذهب اتفقنا معا ان نحافظ علي اداب المكتبه والا نرفع اصواتنا داخل المكتبه والا نأكل فيها وان نجلس بهدوء ونحافظ علي نظافة المكتبه،
وبعد ذلك ذهبنا الي مكتبة المدرسة مع معلمنا فدخلنا قاعتها الواسعه وشاهدنا أرفف رصت عليها الكتب ومنضده كبيره وطويله حولها مجموعه من الكراسي، وذهبت الى رف الكتب واخذت كتاب اعجبني كثيراا  فيه قصص لطيفه فكتبت رقمه واسمه على ورقه وذهبت الى امينه المكتبه التي كانت تجلس حول منضده في مدخل القاعه واعطيتها اسم الكتاب ورقمه، وبعد ذلك ذهبت  امينه المكتبه واحضرت لي  الكتاب  فاخذته وجلست على كرسي  اقرا في الكتاب بصمت وهدوء وبعد ان انتهيت من قراءه الكتاب اعدت الكتاب الى امينه المكتبه وشكرتها ثم خرجت مع زملائي مسرورا لاننا اصدقاء المكتبه،
فالمكتبه مكان جميل وممتع فيمكن ان نفعل في المكتبه اشياء كثيره جميله
 */
