//// ignore_for_file: avoid_unnecessary_containers
//
//import 'package:flutter/material.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
//class NewYearVideoScreen extends StatefulWidget {
//  static const routeName = '/new_year_video_screen';
//
//  const NewYearVideoScreen({Key key}) : super(key: key);
//
//  @override
//  _VideoScreenState createState() => _VideoScreenState();
//}
//
//class _VideoScreenState extends State<NewYearVideoScreen> {
//  YoutubePlayerController _controller;
//  TextEditingController _seekToController;
//
//  PlayerState _playerState;
//  YoutubeMetaData _videoMetaData;
//  double _volume = 100;
//  bool _muted = false;
//  bool _isPlayerReady = false;
//
//  @override
//  void initState() {
////    _controller = YoutubePlayerController(initialVideoId: 'UIkPFdrKM8g');
//    _controller = YoutubePlayerController(
//      initialVideoId: convertedUrl('https://youtu.be/uSeCmFyRn4Y'),
//      flags: const YoutubePlayerFlags(
//        mute: false,
//        autoPlay: true,
//        disableDragSeek: false,
//        loop: true,
//        isLive: false,
//        forceHD: false,
//        enableCaption: true,
//      ),
//    )..addListener(listener);
//    _seekToController = TextEditingController();
//    _videoMetaData = const YoutubeMetaData();
//    _playerState = PlayerState.unknown;
//    super.initState();
//  }
//
//
//  void listener() {
//    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
//      setState(() {
//        _playerState = _controller.value.playerState;
//        _videoMetaData = _controller.metadata;
//      });
//    }
//  }
//
//  @override
//  void dispose() {
//    _controller.pause();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////      backgroundColor: Colors.black,
//      appBar: AppBar(
//        title: Text('الفيديو التوضيحي'),
//        centerTitle: true,
//      ),
//      body: Center(
//        child: YoutubePlayerBuilder(
//          player: YoutubePlayer(controller: _controller),
//          builder: (context, player) {
//            return YoutubePlayer(
//              controller: _controller,
//              showVideoProgressIndicator: true,
//            );
//          },
//        ),
//      ),
//    );
//  }
//
//  // function
//  String convertedUrl(url) {
//    return YoutubePlayer.convertUrlToId(url).toString();
//  }
//}
