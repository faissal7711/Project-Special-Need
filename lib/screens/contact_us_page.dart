import 'package:flutter/material.dart';

import '../services/theme.dart';

class ContactUsScreen extends StatelessWidget {
  static const routeName = '/contact_us_screen';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: purpleColor,
//      drawer: MyDrawer(),
      appBar: new AppBar(
        primary: true,
        centerTitle: true,
        title: new Text("Our Team"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
//          Image(
//            image: AssetImage('assets/images/foo.jpg'),
//            fit: BoxFit.cover,
//            color: Colors.greenAccent,
//            colorBlendMode: BlendMode.darken,
//          ),
          ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('Eng/Abdulrhman Refaay'),
                  leading: Text('1'),
                  subtitle: Text('Supervisor‏'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Eng/Faissal Gomaa'),
                  leading: Text('2'),
                  subtitle: Text('faissalgomaa777111@gmail.com'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Eng/Mohammed Fawzy'),
                  leading: Text('3'),
                  subtitle: Text('medostar50@gmail.com '),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
