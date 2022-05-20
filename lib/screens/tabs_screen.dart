import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';
import '../conestants.dart';
import '../services/theme.dart';
import 'categories_screen.dart';
import 'revision/revision.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs_screen';
  static int routeIndex;

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
//  var currentPage = DrawerSection.
  final List<Map<String, Object>> _page = [
    {
      'page': CategoriesScreen(),
      'title': 'المنهج',
    },
    {
      'page': RevisionScreen(),
      'title': 'المراجعه',
    },
  ];
  int _selectPageIndex = 0;

//  void _selectPage(int value) {
//    setState(() {
//      _selectPageIndex = value;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Theme.of(context).primaryColor,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          _page[TabsScreen.routeIndex]['title'],
          style: StyleTitle,
        ),
//        leading: Icon(Icons.menu,),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: purpleColor,
//        color: Theme.of(context).primaryColor.withOpacity(0),
        child: _page[TabsScreen.routeIndex]['page'],
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        selectedFontSize: 20,
//        backgroundColor: purpleColor,
//        selectedItemColor: Theme.of(context).colorScheme.primary,
//        unselectedItemColor: KTextColor.shade300,
//        currentIndex: TabsScreen.routeIndex,
//        onTap: _selectPage,
//        items: [
//          BottomNavigationBarItem(
//            icon: Icon(Icons.local_library, size: 25),
//            label: 'المنهج',
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.description, size: 25),
//            label: 'المراجعه',
//          ),
//        ],
//      ),
    );
  }
}
