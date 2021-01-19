import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Sound.dart';
import 'package:insomina/utils/image_name.dart';

class SoundItem extends StatefulWidget {
  final Sound sound;
  SoundItem({Key key, this.sound}) : super(key: key);

  @override
  _SoundItemState createState() => _SoundItemState();
}

class _SoundItemState extends State<SoundItem> {
  bool isPaly = false;
  AssetsAudioPlayer _audio = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    _audio.open(Audio(widget.sound.audio_url));
    _playSound();
  }

  _playSound() {
    _audio.play();
    setState(() {
      isPaly = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "SOUND ${widget.sound.name}"),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(.4),
        onPressed: () {
          setState(() {
            isPaly = !isPaly;
          });
          if (isPaly) {
            _audio.play();
          } else {
            _audio.pause();
          }
        },
        child: Icon(isPaly ? Icons.volume_mute : Icons.volume_down),
      ),
      body: Container(
         decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.sound.image_path),
                      fit: BoxFit.fill)),
            )
          ],
        ),
      ),
    );
  }
}
