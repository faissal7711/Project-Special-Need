import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

import '../dummy_data.dart';
import '../services/theme.dart';
import 'vedio_screen.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = 'category_meals';
  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
//  String categoryTitle;
  List<Meal> categoryMeals;

  void removeMeal(String mealId) {
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  void didChangeDependencies() {
    final routArg =
    ModalRoute.of(context).settings.arguments as String;
//    final categoryId = routArg['id'];
//    categoryTitle = routArg['title'];
    categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(routArg);
    }).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: Text('المهن'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () {
              VideoScreen.url = categoryMeals[index].id;
              Navigator.of(context).pushNamed(VideoScreen.routeName);
            },
            child: MealItem(
              id: categoryMeals[index].id,
              imageURL: 'assets/images/belady_job_${index+1}.jpg',
              title: categoryMeals[index].title,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability,
              removeItem: removeMeal,
            ),
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
//