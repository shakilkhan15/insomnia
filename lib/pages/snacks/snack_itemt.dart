import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Snack.dart';
import 'package:insomina/utils/image_name.dart';

class SnackItem extends StatefulWidget {
  final Snack snack;
  SnackItem({Key key, this.snack}) : super(key: key);

  @override
  _SoundItemState createState() => _SoundItemState();
}

class _SoundItemState extends State<SnackItem> {
 
 

  @override
  void initState() {
    super.initState();
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "SNACK ${widget.snack.name}"),
     
      body: Container(
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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.snack.image_path),
                        fit: BoxFit.fill)),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),

                child: Text(widget.snack.description, textAlign: TextAlign.justify, style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
