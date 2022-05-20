//import 'package:assets_audio_player/assets_audio_player.dart';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import '../conestants.dart';
import '../dummy_data.dart';
import '../services/theme.dart';
import '../widgets/custom_button.dart';
import 'belady/belady_main_screen.dart';
import 'new_year/new_year_main_screen.dart';
import 'qanatir/qanatir_main_screen.dart';
import 'school_library/library_main_screen.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = '/categories_screen';

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
//  AssetsAudioPlayer player=AssetsAudioPlayer();

//  AudioCache rightAnswerSound = AudioCache(prefix: "");
//  AudioCache wrongAnswerSound = AudioCache(prefix: "");
//  AudioCache testFinishedSound = AudioCache(prefix: "");

//  AudioPlayer audioPlayer = AudioPlayer();
//   AudioCache audioCache;
//  String path='audio/exelant.mp3';
  AudioPlayer player = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: "");
  PlayerState audioPlayerState = PlayerState.PLAYING;

  @override
  void initState() {
    super.initState();
//    player.open(Audio(path),autoStart: false,showNotification: true);
//     audioCache=AudioCache(fixedPlayer: audioPlayer,prefix: "assets/");
//    audioPlayerState = PlayerState.STOPPED;
//    playMusic();

//    audioCache.clearAll();
//     audioCache.fetchToMemory(path);
//     audioCache.clearAll();
//    audioPlayer.onPlayerStateChanged.listen((PlayerState playerState) {
//      setState(() {
//        audioPlayerState = playerState;
//      });
//    });
  }

  @override
  void dispose() {
    super.dispose();
//    audioPlayer.release();
//    audioPlayer.dispose();
    player.release();
    player.dispose();
//     audioCache.clearAll();
  }

  playMusic() async {
    if (audioPlayerState == PlayerState.PAUSED) {
      player.resume();
    } else {
      String audioAsset = "assets/audio/test.mp3";
//    String audioAsset = "assets/audio/foo.m4a";
      ByteData bytes =
          await rootBundle.load(audioAsset); //load sound from assets
      Uint8List soundBytes =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      // to play the audio (player OR audioCache)
      int result = await player.playBytes(soundBytes);
//      audioCache.play(audioAsset);
//      if(result == 1){ //play success
//        print("Sound playing successful.");
//      }else{
//        print("Error while playing sound.");
//      }
      // to repeat the audio
//      audioCache.loop(audioAsset);
    }
    audioPlayerState = PlayerState.PLAYING;

//    final player = AudioPlayer();
//    await player.setUrl('assets/audio/exelant.mp3',isLocal: true);
//    await player.resume();
//    expect(popLastCall().method, 'setSourceUrl');

//     await audioPlayer.play(path);
//     await audioCache.play(path);
//    player.play();
  }

  pauseMusic() async {
//    await audioPlayer.pause();
    audioPlayerState = PlayerState.PAUSED;
    await player.pause();
  }

  stopMusic() async {
//    await audioPlayer.pause();
    audioPlayerState = PlayerState.STOPPED;
    await player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          CustomButton(
            heroTag: 'main1',
            color: purpleColor,
//            context: context,
            onPressed: () {
//              rightAnswerSound.play(path);
//              playMusic();
//              audioPlayerState == PlayerState.PLAYING
//                  ? pauseMusic()
//                  : playMusic();
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
              stopMusic();
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
