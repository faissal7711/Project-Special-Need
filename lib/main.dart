import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'components/quiz_page.dart';
import 'components/quiz_score.dart';
import 'conestants.dart';
import 'home_page.dart';
import 'screens/belady/belady_main_screen.dart';
import 'screens/belady/belady_short_vedio_screen.dart';
import 'screens/belady/lesson_belady_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/filters_screen.dart';
import 'screens/new_year/new_year_main_screen.dart';
import 'screens/new_year/new_year_screen.dart';
import 'screens/lesson_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/new_year/new_year_vedio_screen.dart';
import 'screens/qanatir/lesson_qanatir_screen.dart';
import 'screens/qanatir/qanatir_main_screen.dart';
import 'screens/qanatir/qanatir_vedio_screen.dart';
import 'screens/school_library/library_main_screen.dart';
import 'screens/school_library/library_screen.dart';
import 'screens/school_library/library_vedio_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/vedio_screen.dart';
import 'testing.dart';

// https://youtu.be/uSeCmFyRn4Y  فيديو عام جديد

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "EG"),
      ],
      locale: const Locale("ar", "EG"),
      routes: {
//        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        VideoScreen.routeName: (context) => VideoScreen(),

        QuizScore.routeName: (context) => QuizScore(),
        QuizImage.routeName: (context) => QuizImage(),

        NewYearMainScreen.routeName: (context) => NewYearMainScreen(),
//        NewYearVideoScreen.routeName: (context) => NewYearVideoScreen(),
        LessonNewYearScreen.routeName: (context) => LessonNewYearScreen(),

//        LibraryVideoScreen.routeName: (context) => LibraryVideoScreen(),
        LibraryMainScreen.routeName: (context) => LibraryMainScreen(),
        LessonLibraryScreen.routeName: (context) => LessonLibraryScreen(),

        LessonQanatirScreen.routeName: (context) => LessonQanatirScreen(),
        QanatirMainScreen.routeName: (context) => QanatirMainScreen(),
//        QanatirVideoScreen.routeName: (context) => QanatirVideoScreen(),

        BeladyMainScreen.routeName: (context) => BeladyMainScreen(),
//        BeladyShortVideoScreen.routeName: (context) => BeladyShortVideoScreen(),
        LessonBeladyScreen.routeName: (context) => LessonBeladyScreen(),
//        BeladyVideoScreen.routeName: (context) => BeladyVideoScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: KMainColor,
//          primarySwatch: Colors.green,
          accentColor: KSecondaryColor,//Colors.white54,
          canvasColor: Color.fromRGBO(255, 254, 229, 1.0),
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 50, 50, 1.0),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 50, 50, 1.0),
                ),
                subtitle1: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
      home: TabsScreen(),
//      home: CategoriesScreen(),
//      home: HomePage(),
    );
  }
}

// واصفر فاقع للخلفية احمر لون اساسي للكلام

