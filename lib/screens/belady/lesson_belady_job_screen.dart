import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../services/theme.dart';

class LessonBeladyJobScreen extends StatelessWidget {
  static const routeName = 'lesson_belady_job_screen';

  @override
  Widget build(BuildContext context) {
//    playMusic(pathAudio: 'assets/audio/job1.ogg');
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("درس بلادي (المهن)"),
        actions: [
          Column(
            children: [
              Row(
                children: [
                  Text('مرر للأعلى'),
                  Icon(Icons.arrow_upward),
                ],
              ),
              Row(
                children: [
                  Text('مرر للأسفل'),
                  Icon(Icons.arrow_downward),
                ],
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
//                  carouselController: CarouselController(),
                  items: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child:
                              Image.asset('assets/images/belady_lesson1.jpg'),
                        ),
                        Text(
                          '',
                          style: TextStyle(
                            color: orangeColor,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/images/100.jpg'),
                        ),
                        Text(
                          'بلدي مصر اجمل البلاد',
                          style: TextStyle(
                            color: orangeColor,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/images/101.jpg'),
                        ),
                        Text(
                          'في بلدي النهر والبحر والترعه والجبل.',
                          style: TextStyle(
                            color: orangeColor,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/images/102.jpg'),
                        ),
                        Text(
                          'في بلدي الفلاح يزرع القمح والقطن.',
                          style: TextStyle(
                            color: orangeColor,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/images/103.jpg'),
                        ),
                        Text(
                          'في بلدي الخباز يصنع الخبز.',
                          style: TextStyle(
                            color: orangeColor,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/images/104.jpg'),
                        ),
                        Text(
                          'في بلدي الصياد يصطاد السمك '
                          'من البحر والنهر والترعه. ',
                          style: TextStyle(
                            color: orangeColor,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                  //Slider Container properties
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: Duration(milliseconds: 100),
                    viewportFraction: 0.8,
                    initialPage: 0,
                    scrollDirection: Axis.vertical,
                    onPageChanged: (index, reason) {
                      playMusic(pathAudio: 'assets/audio/job$index.ogg');
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
