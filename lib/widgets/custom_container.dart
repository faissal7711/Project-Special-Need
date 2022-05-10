import 'package:flutter/material.dart';

import '../conestants.dart';

//import '.../constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    @required this.context,
    @required this.title,
    @required this.description,
    @required this.function,
  });
  final Function() function;
  final String title;
  final String description;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 120.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
//                    border: Border.all(
//                      color: Colors.black,
//                      width: 2.0,
//                    ),
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(colors: [
//                        Colors.teal,
                Colors.white,
                Colors.white,
                Theme.of(context).primaryColor,
              ]),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    offset: Offset(4.0, 4.0))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 22,
                            color: KTextColor,
                            fontWeight: FontWeight.w900))),
                Text(description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
