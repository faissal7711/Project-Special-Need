import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'components/quiz_page.dart';
import 'components/quiz_score.dart';
import 'conestants.dart';
import 'home.dart';
import 'screens/Login_screen/login_screen.dart';
import 'screens/belady/belady_main_screen.dart';
import 'screens/belady/belady_sanaf_test_screen.dart';
import 'screens/belady/belady_test_screen.dart';
import 'screens/belady/belady_wassal_test_screen.dart';
import 'screens/belady/lesson_belady_job_screen.dart';
import 'screens/belady/lesson_belady_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/contact_us_page.dart';
import 'screens/new_year/new_year_main_screen.dart';
import 'screens/new_year/new_year_screen.dart';
import 'screens/new_year/new_year_test_screen.dart';
import 'screens/qanatir/lesson_qanatir_screen.dart';
import 'screens/qanatir/qanatir_main_screen.dart';
import 'screens/qanatir/qanatir_test_screen.dart';
import 'screens/revision/final_revision_test_screen.dart';
import 'screens/revision/revision.dart';
import 'screens/revision/revision_test_screen.dart';
import 'screens/school_library/library_main_screen.dart';
import 'screens/school_library/library_screen.dart';
import 'screens/school_library/library_test_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/vedio_screen.dart';
import 'package:meal_app/screens/students_body.dart';
import 'widgets/web_view.dart';

// https://youtu.be/uSeCmFyRn4Y  فيديو عام جديد

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().whenComplete(() {
    print("completed");
  });
  runApp(MyApp());
}

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
//        '/': (context) => Home(),
        '/': (context) => LoginScreen(),
        Home.routeName: (context) => Home(),
        TabsScreen.routeName: (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        CategoriesScreen.routeName: (context) => CategoriesScreen(),
        ContactUsScreen.routeName: (context) => ContactUsScreen(),
        StudentsScreen.routeName: (context) => StudentsScreen(),
        ///////////////////////////////////////////////////////////////
        RevisionTestScreen.routeName: (context) => RevisionTestScreen(),
        FinalRevisionTestScreen.routeName: (context) =>
            FinalRevisionTestScreen(),
        RevisionScreen.routeName: (context) => RevisionScreen(),
        ///////////////////////////////////////////////////////////////
//        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        VideoScreen.routeName: (context) => VideoScreen(),
        WebViewLoad.routeName: (context) => WebViewLoad(),

        LibraryTestScreen.routeName: (context) => LibraryTestScreen(),
        NewYearTestScreen.routeName: (context) => NewYearTestScreen(),
        BeladyTestScreen.routeName: (context) => BeladyTestScreen(),
        QanatirTestScreen.routeName: (context) => QanatirTestScreen(),

//        QuizScore.routeName: (context) => QuizScore(),
//        QuizImage.routeName: (context) => QuizImage(),
//        QuizImageRev.routeName: (context) => QuizImageRev(),
//        QuizScoreRev.routeName: (context) => QuizScoreRev(),
        QuizImageNew.routeName: (context) => QuizImageNew(),
        QuizScoreNew.routeName: (context) => QuizScoreNew(),

        NewYearMainScreen.routeName: (context) => NewYearMainScreen(),
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
        BeladyWassalTestScreen.routeName: (context) => BeladyWassalTestScreen(),
        BeladySanafTestScreen.routeName: (context) => BeladySanafTestScreen(),
        LessonBeladyJobScreen.routeName: (context) => LessonBeladyJobScreen(),
      },
      title: 'طفلي يتعلم',
      theme: ThemeData(
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
              ),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: KMainColor)
              .copyWith(secondary: KSecondaryColor)),
//      home: TabsScreen(),
//      home: CategoriesScreen(),
//      home: HomePage(),
//      home: Home(),
    );
  }
}

// واصفر فاقع للخلفية احمر لون اساسي للكلام
