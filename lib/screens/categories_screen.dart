//import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../conestants.dart';
import '../dummy_data.dart';
import '../services/theme.dart';
import '../widgets/custom_button.dart';
import 'belady/belady_main_screen.dart';
import 'new_year/new_year_main_screen.dart';
import 'qanatir/qanatir_main_screen.dart';
import 'school_library/library_main_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
//  AssetsAudioPlayer player=AssetsAudioPlayer();


  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache;
  String path='assets/audio/exelant.mp3';

  PlayerState audioPlayerState =PlayerState.PLAYING;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    player.open(Audio(path),autoStart: false,showNotification: true);
    audioCache=AudioCache(fixedPlayer: audioPlayer);
//    audioPlayer.onPlayerStateChanged.listen((PlayerState playerState) {
//      setState(() {
//        audioPlayerState = playerState;
//      });
//    });
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.release();
    audioPlayer.dispose();
    audioCache.clearAll();
  }

  playMusic()async{
    await audioCache.play(path);
//    player.play();
  }

  pauseMusic()async{
    await audioPlayer.pause();
//    player.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05),
      child: ListView(
        children: [
          CustomButton(
            heroTag: 'main1',
            color: purpleColor,
//            context: context,
            onPressed: () {
//              playMusic();
//              audioPlayerState==PlayerState.PLAYING?pauseMusic():playMusic();
              Navigator.of(context).pushNamed(NewYearMainScreen.routeName);
            },
            text: DUMMY_CATEGORIES[0].title,
//            description: '',
          ),
          CustomButton(
            heroTag: 'main2',
            color: KButtonColor3,
//            context: context,
            onPressed: () {
//              AudioPlayer,
              Navigator.of(context).pushNamed(BeladyMainScreen.routeName);
            },
            text: DUMMY_CATEGORIES[1].title,
//            description: '',
          ),
          CustomButton(
            heroTag: 'main3',
            color: KButtonColor3,
//            context: context,
            onPressed: () {
              Navigator.of(context).pushNamed(LibraryMainScreen.routeName);
            },
            text: DUMMY_CATEGORIES[2].title,
//            description: '',
          ),
          CustomButton(
            heroTag: 'main4',
            color: KButtonColor3,
//            context: context,
            onPressed: () {
              Navigator.of(context).pushNamed(QanatirMainScreen.routeName);
            },
            text: DUMMY_CATEGORIES[3].title,
//            description: '',
          ),
        ],
      ),
    );
  }
}
