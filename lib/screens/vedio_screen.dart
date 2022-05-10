// ignore_for_file: avoid_unnecessary_containers, unused_field

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../conestants.dart';
import '../services/theme.dart';

class VideoScreen extends StatefulWidget {
  static const routeName = '/video_screen';
  static String url;
  static String title;

//  static Function convertedUrl(String url){}

  const VideoScreen({Key key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  YoutubePlayerController _controller;
  TextEditingController _seekToController;

  PlayerState _playerState;
  YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  @override
  void initState() {
//    _controller = YoutubePlayerController(initialVideoId: 'UIkPFdrKM8g');
    _controller = YoutubePlayerController(
      initialVideoId: convertedUrl(VideoScreen.url),
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: true,
        hideControls: false,
        controlsVisibleAtStart: true,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
    super.initState();
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void dispose() {
    _controller.pause();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: Text(
            VideoScreen.title != null ? VideoScreen.title : 'الفيديو التوضيحي',
            style: StyleTitle),
        centerTitle: true,
      ),
      body: Center(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(controller: _controller),
          builder: (context, player) {
            return YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            );
          },
        ),
      ),
    );
  }

  // function
  static String convertedUrl(url) {
    return YoutubePlayer.convertUrlToId(url).toString();
  }
}
