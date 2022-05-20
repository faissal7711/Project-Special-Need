import 'package:flutter/material.dart';
import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'عام جديد',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'بلادي',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'المكتبة المدرسية',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'القناطر الخيرية',
    color: Colors.amber,
  ),
];

const DUMMY_BUTTON = const [
  Category(
    id: 'c1',
    title: 'شرح الدرس',
    color: Colors.purpleAccent,
  ),
  Category(
    id: 'c2',
    title: 'فيديو الشرح',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'اﻷختبارات',
    color: Colors.green,
  ),
  Category(
    id: 'job',
    title: 'المهن',
    color: Colors.blue,
  ),
];


const DUMMY_MEALS = const [
  Meal(
    id: 'https://youtu.be/roBsbJryOLs',
    categories: [
      'job',
    ],
    title: 'شرطي',
//    affordability: Affordability.Affordable,
//    complexity: Complexity.Simple,
    imageUrl:
        'assets/images/library_image2.jpeg',
  ),
  Meal(
    id: 'https://youtu.be/JCDQPJXwmtQ',
    categories: [
      'job',
    ],
    title: 'مزارع',
//    affordability: Affordability.Affordable,
//    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
  ),
  Meal(
    id: 'https://youtu.be/vUSC6VFPwGE',
    categories: [
      'job',
    ],
    title: 'خباز',
//    affordability: Affordability.Pricey,
//    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
  ),
  Meal(
    id: 'https://youtu.be/2FkFiWmBUcQ',
    title: 'طبيب',
    categories: [
      'job',
    ],
//    affordability: Affordability.Luxurious,
//    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
  ),
  Meal(
    categories: [
      'job',
    ],
    id: 'https://youtu.be/o1Vh--TCw9E',
    title: 'خياط',
//    affordability: Affordability.Luxurious,
//    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
  ),
  Meal(
    id: 'https://youtu.be/whb--I1AhI4',
    title: 'نجار',
    categories: [
      'job',
    ],
//    affordability: Affordability.Affordable,
//    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
  ),
  Meal(
    categories: [
      'job',
    ],
    id: 'https://youtu.be/i3DR13KB8Pg',
    title: 'رجل إطفاء',
//    affordability: Affordability.Affordable,
//    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
  ),
  Meal(
    categories: [
      'job',
    ],
    id: 'https://youtu.be/146kQ8QqiyM',
    title: 'لحام',
//    affordability: Affordability.Pricey,
//    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
  ),
  Meal(
    categories: [
      'job',
    ],
    id: 'https://youtu.be/efruItoZDmQ',
    title: 'طيار',
//    affordability: Affordability.Affordable,
//    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
  ),
  Meal(
    categories: [
      'job',
    ],
    id: 'https://youtu.be/Ph93SS4OEtk',
    title: 'مهندس',
//    affordability: Affordability.Luxurious,
//    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
  ),
  Meal(
    categories: [
      'job',
    ],
    id: 'https://youtu.be/lBA35Rm6aJ8',
    title: 'معلمه',
//    affordability: Affordability.Affordable,
//    complexity: Complexity.Hard,
    imageUrl:
    'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
  ),
  Meal(
    categories: [
      'job',
    ],
    id: 'https://youtu.be/7tpGAOQGjcE',
    title: 'عامل نظافه',
//    affordability: Affordability.Luxurious,
//    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
  ),
];
