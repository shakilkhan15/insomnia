import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/pages/test/test_section.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class TestInfo extends StatelessWidget {
  static final String idScreen = 'TestInfo';
  const TestInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: 'TEST'),
      body: Container(
        height: height(context),
        width: width(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          child: Container(
            height: height(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Read carefully:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'This test section is guiding you to recognize the symptoms of insomnia. Your answer will determine whether you have the insomnia symptoms or not.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'If your answer is most',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: ' INCORRECT',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' You may have the symptom of insomnia but not critical',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'If your answer is most',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: ' CORRECT',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: ' You have the high possibility to have insomnia',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(TestSection.idScreen);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(.6)),
                    child: Center(
                      child: Text(
                        'START',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
