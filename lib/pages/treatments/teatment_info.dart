import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/pages/snacks/snack_menu.dart';
import 'package:insomina/pages/sounds/sound_menu.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class TreatmentInfo extends StatelessWidget {
  static final String idScreen = 'TreatmentInfo';
  const TreatmentInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: 'TREATMENT INFO MENU'),
      body: Container(
        height: height(context),
        width: width(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SoundMenu.idScreen);
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/Picture34.png'))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SnackMenu.idScreen);
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/Picture35.png'))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/Picture36.png'))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
