import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Shapes extends StatefulWidget {
  const Shapes({Key? key}) : super(key: key);

  @override
  State<Shapes> createState() => _Shapes();
}

class _Shapes extends State<Shapes> {
  final String Url = 'https://youtu.be/GkzaUt0_EwI';
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final id = YoutubePlayer.convertUrlToId(Url)!; // Convert the link to id.
    _controller = YoutubePlayerController(
      initialVideoId: id,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BuildOfflineBuilder(
        screen: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text("الأشكال الهندسية", style: TextStyle(fontSize: 30))),
      body: SingleChildScrollView(
          child: WillPopScope(
              onWillPop: () async {
                if (_controller.value.isFullScreen) {
                  // If the player is in full-screen mode, exit full-screen mode
                  _controller.toggleFullScreenMode();
                  return false; // Do not close the app
                } else {
                  return true; // Allow the back button to close the app
                }
              },
              child: Column(
                children: [
                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    bottomActions: [
                      CurrentPosition(),
                      ProgressBar(
                        isExpanded: true,
                        colors: const ProgressBarColors(
                          playedColor: Colors.orange,
                          handleColor: Colors.orangeAccent,
                        ),
                      ),
                      const PlaybackSpeedButton(),
                      FullScreenButton(),
                    ],
                  ),
                ],
              ))),
    ));
  }
}
