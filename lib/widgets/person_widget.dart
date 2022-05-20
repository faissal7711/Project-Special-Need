import 'package:flutter/material.dart';

class PersonWidget extends StatelessWidget {
  final String name, title, img;
  const PersonWidget({Key key, this.name, this.title, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(8.0),
        //border: Border.all(color: RegularTheme.blueGray),
        boxShadow: [BoxShadow(/*color: RegularTheme.blueGray,*/ blurRadius: 0.5, spreadRadius: 0.5)]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
//                color: RegularTheme.lightGrey,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    img,
                    fit: title.isEmpty?BoxFit.contain:BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          title.isEmpty?
          Flexible(
            flex: 2,

            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0
                ),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          )
          :
          Flexible(
            flex: 2,
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        bottom: 6.0
                    ),
                    child: Column(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
//                              fontSize: Res.of(context, Res.normal)
                          ),
                        ),
                        Text(
                          title,
                          style: TextStyle(
//                              color: RegularTheme.blueGray,
//                              fontSize: Res.of(context, Res.small)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ,
          
        ],
      ),
    );
  }
}

const List person_data = [
  {
    'name': 'محمود عبدالعال احمد',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'عبدالرحمن محمود',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'اسماء صلاح',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  ////////////////////////////////////////
  {
    'name': 'اسلام رجائي طه',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'اسراء طه حلمي',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'خلود رمضان عوف',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'احمد خالد',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  ////////////////////////////////////////
  {
    'name': 'حازم محمد',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'فاطمه شعبان رمضان',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'جهاد رمضان',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  ////////////////////////////////////////
  {
    'name': 'شيماء خالد',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'هدير عادل',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
  {
    'name': 'ابانوب',
    'title': '',
    'img': 'assets/icon/profile_icon.png',
  },
];