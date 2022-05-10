// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'widgets/DashboardCards.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
//  Animation animation, delayedAnimation, muchDelayedAnimation, LeftCurve;
//  AnimationController animationController;

  @override
  void initState() {
    super.initState();
//    Firebase.initializeApp();
   /* SystemChrome.setEnabledSystemUIOverlays([]);*/
//    animationController =
//        AnimationController(duration: Duration(seconds: 3), vsync: this);
//    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
//        parent: animationController, curve: Curves.fastOutSlowIn));

//    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
//        parent: animationController,
//        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));
//
//    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
//        parent: animationController,
//        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));
//
//    LeftCurve = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
//        parent: animationController,
//        curve: Interval(0.5, 1.0, curve: Curves.easeInOut)));
  }

  @override
  void dispose() {
//    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

//    animationController.forward();
    return AnimatedBuilder(
//      animation: animationController,
      builder: (BuildContext context, Widget child) {
        final GlobalKey<ScaffoldState> _scaffoldKey =
            new GlobalKey<ScaffoldState>();
        return Scaffold(
//          key: _scaffoldKey,
//          drawer: Drawer(
//            elevation: 0,
//            child: MainDrawer(),
//          ),
//          appBar: CommonAppBar(
//            menuenabled: true,
//            notificationenabled: true,
//            ontap: () {
//              _scaffoldKey.currentState.openDrawer();
//            },
//            title:"الصفحة الرئيسية",
//          ),
          body: ListView(
            children: [
//              UserDetailCard(),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
//                          transform: Matrix4.translationValues(
//                              muchDelayedAnimation.value * width, 50, 0),
//                          child: Bouncing(
//                            onPress: () {
//                              Navigator.push(
//                                  context,
//                                  MaterialPageRoute(
//                                    builder: (BuildContext context) =>
//                                        Home(),
//                                  ));
//                            },
                            child: DashboardCard(
                              name: "المنهج",
                              imgpath: "library.png",
                            ),
//                          ),
                        ),
//                        Transform(
//                          transform: Matrix4.translationValues(
//                              delayedAnimation.value * width, 50, 0),
//                          child: Bouncing(
//                            onPress: () {
//                              Navigator.push(
//                                  context,
//                                  MaterialPageRoute(
//                                    builder: (BuildContext context) =>
//                                        Home(),
//                                  ));
//                            },
//                          ),
//                        ),

                        DashboardCard(
                          name: "المراجعة",
                          imgpath: "exam.png",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
