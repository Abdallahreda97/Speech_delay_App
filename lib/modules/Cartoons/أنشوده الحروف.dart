import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Letters2 extends StatefulWidget {
  const Letters2({Key? key}) : super(key: key);

  @override
  State<Letters2> createState() => _Letters2();
}

class _Letters2 extends State<Letters2> {
  final String Url = 'https://youtu.be/U1Cl6W8EEBQ';
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
              title: Text("أنشودة الحروف", style: TextStyle(fontSize: 30))),
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
                        ],
                      ),
                    ],
                  )))),
    );
  }
}
