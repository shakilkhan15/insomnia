import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Snack.dart';
import 'package:insomina/models/Sound.dart';
import 'package:insomina/pages/snacks/snack_itemt.dart';
import 'package:insomina/pages/sounds/sound_itemt.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class SnackMenu extends StatefulWidget {
    static final String idScreen = 'SnackMenu';
  SnackMenu({Key key}) : super(key: key);

  @override
  _SoundSectionState createState() => _SoundSectionState();
}

class _SoundSectionState extends State<SnackMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "EXERCISE INFO MENU"),
      body: Container(
        height: height(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
             
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: snacks.length,scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SnackItem(
                            snack: snacks[index],
                          ),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(snacks[index].image_path))),
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
