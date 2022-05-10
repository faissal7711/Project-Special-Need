import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../services/theme.dart';

class LessonBeladyScreen extends StatelessWidget {
  static const routeName = 'lesson_belady_screen';

  Widget buildContainerImage(BuildContext context, String imagePath) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(6.0),
      child: Image.asset(imagePath, fit: BoxFit.fill),
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: [
                    Image.asset('assets/images/belady_imag.jpg'),
                    Image.asset('assets/images/belady_lesson1.jpg',fit: BoxFit.fill),
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
//                child: Image.asset('assets/images/belady_lesson1.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'يشمل وطننا العربي علي العديد من التضاريس منها الجبل وهو يعني المنطقة المرتفعه عن سطح الأرض والسهول وتعرف السهول بأنها ارض مستوية نسبيا في سطحها وتتميز بوجود غطاء نباتي عليها والهضاب وتعرف الهضاب بأنها المنطقة الواسعة من المرتفعات المسطحة ومن التضاريس التلات وتعرف التلال بأنها ارض ترتفع عن ما يحيط بها،ومن التضاريس ايضا الوادي ويعرف الوادي بأنه ارض منخفضه بين الجبال والتلال و الكثبان الرملية وتعرف الكثبان بأنها تلال تتشكل من الرمال بسبب تدفق المياة ويمكن أن تكون الكثبان الرملية علي شكل هلال أو قمة أو شكل مستقيم ومن التضاريس ايضا الجزر وهي أرض تحيط بها المياه من جميع الجوانب  وشبه الجزيرة وتعرف شبه الجزيره بأنها ارض تحيط بها المياه من ثلاث جهات ،نحن نعيش تحت سماء واحدة وقمر واحد والقمر هو جسم  فضائي مضئ يدور حول كوكب الارض . ونعيش تحت شمس واحدة والشمس عباره عن كره دائرية تامة التدوير ومصدر للحرارة و الضوء علي سطح الأرض .  لدينا نهر في بلادنا .لدينا شيى واسع نشرب منه . والنهر يعني مكان واسع مياهه حلوة نشرب منها بعد تنقيتها . لدينا بحر في بلادنا لدينا شي واسع مياهه مالحه ونستخرج منه الاسماك التي نأكلها والبحر يعني شي واسع مياهه مالحه وبه امواج كثيره .لدينا ترعه في قريتنا لدينا. شي أقل اتساعا من النهر والترعه تعني شي أقل اتساعا من النهر مياهها حلوة نسقي منها الزرع .لدينا صحراء واسعة قليله المطر يعيش فيها الجمل الذي يعرف باسم سفينه الصحراء وذلك لأنه قادر علي السير وسط رمال الصحراء .كما يوجد في الصحراء بئر وهو فتحه عميقة يحفرها الإنسان للوصول إلي جوف الأرض ليستخرج الماء .ولدينا جبال والجبل يعني ارض عاليه لها قمة .',
                style: TextStyle(fontSize: 22, color: orangeColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
