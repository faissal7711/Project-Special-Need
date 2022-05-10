import 'package:flutter/material.dart';

//import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class HelperMethods {
//  static final advancedDrawerController = AdvancedDrawerController();
  static int _currentDrawerIndex = 0;
  static int getCurrentDrawerIndex() => _currentDrawerIndex;

  static void setCurrentDrawerIndex(int index){
    _currentDrawerIndex = index;
  }

  static void showDrawer(){
//    advancedDrawerController.showDrawer();
  }
  static void closeDrawer(){
//    advancedDrawerController.hideDrawer();
  }

  static showCustomDialog(BuildContext context, Widget content) async{
    return await showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: content,
          insetPadding: const EdgeInsets.all(5.0),
          titlePadding: const EdgeInsets.all(0.0),
          contentPadding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
    );
  }
}