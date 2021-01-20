import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Exercise.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExerciseVideo extends StatefulWidget {
  final Exercise exercise;
  static final String idScreen = 'ExerciseVideo';
  ExerciseVideo({Key key, this.exercise}) : super(key: key);

  @override
  _SoundItemState createState() => _SoundItemState();
}

class _SoundItemState extends State<ExerciseVideo> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    setState(() {
       _controller = YoutubePlayerController(
      initialVideoId: "${widget.exercise.video_url}",
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
    });
   
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "Exerices ${widget.exercise.name}"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
      body: Container(
        height: height(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blue,
                  // onReady: () {
                  //   _controller.addListener(() {
                  //     _controller.play();
                  //   });
                  // },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
