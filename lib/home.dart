import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/revision/revision_test_screen.dart';
import 'screens/tabs_screen.dart';
import 'services/theme.dart';
import 'widgets/DashboardCards.dart';
import 'widgets/custom_container.dart';
import 'widgets/main_drawer.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    /* SystemChrome.setEnabledSystemUIOverlays([]);*/
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: purpleColor,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * .1),
            child: Container(
              alignment: Alignment(1.0, 0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  children: [
                    CustomContainer(
                      context: context,
                      title: 'هيا بنا نتعلم',
                      description:
                          'برنامج تعليمي تفاعلي متميز به العديد من اﻷنشطة للأطفال',
                      function: () {},
                    ),
                    SizedBox(
                      height: height * .2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                TabsScreen.routeIndex = 0;
                              });
                              Navigator.of(context)
                                  .pushNamed(TabsScreen.routeName);
                            },
                            child: DashboardCard(
                              name: "المنهج",
                              imgpath: "library.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                TabsScreen.routeIndex = 1;
                              });
                              Navigator.of(context)
                                  .pushNamed(TabsScreen.routeName);
                            },
                            child: DashboardCard(
                              name: "المراجعة",
                              imgpath: "exam.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
