import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({
    Key key,
    this.heightScreen,
    this.title,
    this.assetImage,
  }) : super(key: key);

  final double heightScreen;
  final String title;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        height: heightScreen * 0.2,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(image: AssetImage(assetImage),fit: BoxFit.fill),
            SizedBox(
              height: 50,
            ),
            Positioned(
              bottom: 0,
              child: Text(
                '',
//                title,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 25.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
