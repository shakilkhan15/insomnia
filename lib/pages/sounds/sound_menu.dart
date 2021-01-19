import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Sound.dart';
import 'package:insomina/pages/sounds/sound_itemt.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class SoundMenu extends StatefulWidget {
    static final String idScreen = 'SoundMenu';
  SoundMenu({Key key}) : super(key: key);

  @override
  _SoundSectionState createState() => _SoundSectionState();
}

class _SoundSectionState extends State<SoundMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "SOUND MENU"),
      body: Container(
        height: height(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
             
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: sounds.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SoundItem(
                            sound: sounds[index],
                          ),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(sounds[index].image_path))),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
