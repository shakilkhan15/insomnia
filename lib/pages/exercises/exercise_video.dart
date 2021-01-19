import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Exercise.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';
import 'package:video_player/video_player.dart';

class ExerciseVideo extends StatefulWidget {
  final Exercise exercise;
   static final String idScreen = 'ExerciseVideo';
  ExerciseVideo({Key key, this.exercise}) : super(key: key);

  @override
  _SoundItemState createState() => _SoundItemState();
}

class _SoundItemState extends State<ExerciseVideo> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network("https://www.youtube.com/watch?v=GHwq05NxJR8")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
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
                child: _controller.value.initialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
