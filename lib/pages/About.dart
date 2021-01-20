import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Snack.dart';
import 'package:insomina/models/Sound.dart';
import 'package:insomina/pages/snacks/snack_itemt.dart';
import 'package:insomina/pages/sounds/sound_itemt.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class AboutPage extends StatefulWidget {
  static final String idScreen = 'AboutPage';
  AboutPage({Key key}) : super(key: key);

  @override
  _SoundSectionState createState() => _SoundSectionState();
}

class _SoundSectionState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "ABOUT"),
      body: Container(
           width: width(context),
        height: height(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
                child: Text(
            """
            our software mainly develop to provide users the information about insomnia which intend to help them in order to improve their health. Commonly, most of the people are suffering with sleeping disorder which we addressed as ‘Insomnia’. According to ICD-10.

The cause and the exact factors of insomnia disorder being clueless and yet there only found a few therapies that can help user to identify the problem and provides some solutions. According psychological and biological factors have been implicated in the development and maintenance of insomnia as a disorder. 
            
            """,
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
              )),
        ),
      ),
    );
  }
}
