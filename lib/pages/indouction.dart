import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/pages/main_menu.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class Indrouction extends StatefulWidget {
  static final String idScreen = 'Indrouction';
  Indrouction({Key key}) : super(key: key);

  @override
  _IndrouctionState createState() => _IndrouctionState();
}

class _IndrouctionState extends State<Indrouction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.pushNamed(context, MainManu.idScreen);
        },
        child: Icon(Icons.arrow_forward_ios),
        backgroundColor: Colors.white.withOpacity(.6),
      ),
     appBar: CAppBar(title: 'INTRODUCTION',),
      body: Container(
        height: height(context),
        width: width(context),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(BgImg))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Love Your Health : Insomnia',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '* Insomnia is a common sleep disorder that can make it hard for some people to fall asleep, hard to stay asleep or cause someone to wake up too early and not be able to get back to sleep. These people may feel tired when they woke up because insomnia can sap not only the energy and mood but also the health, work performance and quality of life. ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                '* It can be caused by depression, anxiety,  travel or work schedule, poor sleep habits, eating too much late in the evening, mental health disorder, medication, sleep related-disorder, caffeine and etc. If you are having this kind of symptom or cause, you should treat it in the early stage then you can avoid it before it gone bad. ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
