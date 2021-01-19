import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Exercise.dart';
import 'package:insomina/models/Snack.dart';
import 'package:insomina/pages/exercises/exercise_video.dart';
import 'package:insomina/utils/image_name.dart';

class ExerciseItem extends StatefulWidget {
  final Exercise exercise;
  static final String idScreen = 'ExerciseItem';
  ExerciseItem({Key key, this.exercise}) : super(key: key);

  @override
  _SoundItemState createState() => _SoundItemState();
}

class _SoundItemState extends State<ExerciseItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "SNACK ${widget.exercise.name}"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExerciseVideo(
                  exercise: widget.exercise,
                ),
              ));
        },
        backgroundColor: Colors.white.withOpacity(.4),
        child: Icon(Icons.arrow_forward_ios, color: Colors.blue),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                itemCount: widget.exercise.images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.exercise.images[index]),
                            fit: BoxFit.fill)),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  widget.exercise.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
