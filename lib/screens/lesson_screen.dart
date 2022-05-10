import 'package:flutter/material.dart';

//import '../widgets/widgets.dart';
//import '../../res/res.dart';
//import '../../text_keys.dart';
import '../../utils/utils.dart';
import '../dummy_data.dart';
import '../widgets/display_image.dart';
import '../widgets/intro_paragraph.dart';
import '../widgets/main_drawer.dart';

class LessonScreen extends StatelessWidget {
  static const routeName = '/lesson_screen';
  LessonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[0].title),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: Res.screenHeight(context) * 0.02),
              DisplayImage(
                'assets/images/bg_snc_1.jpg',
//              AssetPath.REASONS_PHOTO,
                height: Res.screenHeight(context) * 0.22,
                width: Res.screenWidth(context) * 0.88,
              ),
              IntroParagraph(
                body:'hi hih hih hhih ihihih hih',
//              body: TextValue.REASONS_INTRODUCTION_PARAGRAPH,
                size: Res.of(context, Res.normal),
              ),
//            Paragraph(
//              title:'',
//              body:'',
////              title: TextValue.REASONS_PARAGRAPH1_TITLE,
////              body: TextValue.REASONS_PARAGRAPH1_BODY,
//              size: Res.of(context, Res.normal),
//              letters: true,
//            ),
//            Paragraph(
//              title: TextValue.REASONS_PARAGRAPH2_TITLE,
//              body: TextValue.REASONS_PARAGRAPH2_BODY,
//              size: Res.of(context, Res.normal),
//              letters: true,
//            ),
//            Paragraph(
//              title: TextValue.REASONS_PARAGRAPH3_TITLE,
//              body: TextValue.REASONS_PARAGRAPH3_BODY,
//              size: Res.of(context, Res.normal),
//              letters: true,
//            ),
//            Paragraph(
//              title: TextValue.REASONS_PARAGRAPH4_TITLE,
//              body: TextValue.REASONS_PARAGRAPH4_BODY,
//              size: Res.of(context, Res.normal),
//              letters: true,
//            ),

            ],
          )
      ),
    );
  }
}
