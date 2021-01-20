import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/Snack.dart';
import 'package:insomina/models/Sound.dart';
import 'package:insomina/pages/snacks/snack_itemt.dart';
import 'package:insomina/pages/sounds/sound_itemt.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class ContactPage extends StatefulWidget {
  static final String idScreen = 'ContactPage';
  ContactPage({Key key}) : super(key: key);

  @override
  _SoundSectionState createState() => _SoundSectionState();
}

class _SoundSectionState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "CONTACT US"),
      body: Container(
        width: width(context),
        height: height(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Text(
              """
           phone:- 01137274827, 0102563578

          email:- lyhinsomnia@gmail.com

          address:- SS2, jalan 24, petaling jaya, selangor.

          operation hours: 8am -  5pm(Week days)
          weekend off
            
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
