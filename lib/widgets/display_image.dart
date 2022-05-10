import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  final String img;
  final double width, height;
  final BoxFit boxFit;
  DisplayImage(this.img, { this.width, @required this.height, this.boxFit = BoxFit.fill});
  @override
  Widget build(BuildContext context) {
    return defaultImageView();
  }

  Widget defaultImageView(){
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: boxFit,
            ),
          ),
        ),
      ),
    );
  }
}