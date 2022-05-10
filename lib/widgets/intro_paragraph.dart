import 'package:flutter/material.dart';

//import '../../themes/themes.dart';
import '../../utils/utils.dart';


class IntroParagraph extends StatelessWidget {
  final String body;
  final double size, verticalPadding;
  const IntroParagraph({Key key,this.body = "", this.size = Res.normal, this.verticalPadding = 10.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: verticalPadding),
          bodyText()
        ],
      ),
    );
  }

  Widget bodyText(){
    return Text(
      body,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontSize: size,
          color: Colors.blueGrey
      ),
    );
  }
}
