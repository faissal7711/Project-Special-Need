import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';

import '../screens/belady/belady_short_vedio_screen.dart';
import '../screens/vedio_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String imageURL;
  final int duration;
  final String title;
  final Complexity complexity;
  final Affordability affordability;
  final Function removeItem;

  const MealItem({
    @required this.id,
    @required this.imageURL,
    @required this.duration,
    @required this.title,
    @required this.complexity,
    @required this.affordability,
    @required this.removeItem,
  });

  void selectMeal(BuildContext ctx) {
//    Navigator.of(ctx).pushNamed(VideoScreen.routeName).then((value) {
//      if(value != null) removeItem(value);
//    });
  }

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      default:
        return 'unknown';
        break;
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      default:
        return 'unknown';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(44.0)),
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(33.0),
              topRight: Radius.circular(15.0),
            ),
            child: Container(
              height: 180.0,
              child: Image.asset(
                imageURL,
                height: 180.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 6.0,
                ),
                Icon(Icons.work),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
