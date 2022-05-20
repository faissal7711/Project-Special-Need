import 'package:flutter/material.dart';
import '../../conestants.dart';
import '../../widgets/custom_button.dart';
import 'final_revision_test_screen.dart';
import 'revision_test_screen.dart';

class RevisionScreen extends StatefulWidget {
  static const routeName = '/revision_screen';

  @override
  State<RevisionScreen> createState() => _RevisionScreenState();
}

class _RevisionScreenState extends State<RevisionScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05),
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.001),
        children: [
          CustomButton(
            heroTag: 'library1',
            color: KButtonColor1,
//            context: context,
            onPressed: () {
//              setState(() {
//                TabsScreen.routeIndex = 1;
//              });
              Navigator.of(context).pushNamed(RevisionTestScreen.routeName);
            },
            text: 'اﻷختبار اﻷولي',
//            description: '',
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomButton(
            heroTag: 'library_1',
            color: KButtonColor4,
//            context: context,
            onPressed: () {
//              setState(() {
//                TabsScreen.routeIndex = 1;
//              });
              Navigator.of(context).pushNamed(FinalRevisionTestScreen.routeName);
            },
            text: 'اﻷختبار النهائي',
//            description: '',
          ),
        ],
      ),
    );
  }
}
