import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/models/BrainStorming.dart';
import 'package:insomina/models/Snack.dart';
import 'package:insomina/models/Sound.dart';
import 'package:insomina/pages/snacks/snack_itemt.dart';
import 'package:insomina/pages/sounds/sound_itemt.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class BrainStromingInfo extends StatefulWidget {
  static final String idScreen = 'BrainStromingInfo';
  BrainStromingInfo({Key key}) : super(key: key);

  @override
  _SoundSectionState createState() => _SoundSectionState();
}

class _SoundSectionState extends State<BrainStromingInfo> {
  bool isCorrect = false;
  Color color = Colors.redAccent;
  String selected = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "BRAINSTORMING ACTIVITY "),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black54,
        child: Container(
          height: 40,
          width: width(context),
          child: Center(
              child: Text(
            brainstomingData.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )),
        ),
      ),
      body: Container(
        height: height(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: brainstomingData.answers.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.5,
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
              itemBuilder: (context, index) {
                 var orginal = brainstomingData.answers[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      selected = brainstomingData.answers[index];
                      isCorrect = !isCorrect;
                    });
                    if (selected ==
                        brainstomingData.orginalAnswer) {
                      setState(() {
                        color = Colors.green;
                      });
                    } else {
                      setState(() {
                        color = Colors.red;
                      });
                    }
                  },
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: selected == orginal  ? color : Colors.transparent,
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(60)),
                    child: Center(
                        child: Text(
                      brainstomingData.answers[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )),
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
