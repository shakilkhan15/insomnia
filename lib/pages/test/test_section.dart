import 'package:flutter/material.dart';
import 'package:insomina/components/app_bar.dart';
import 'package:insomina/components/test/model_qa.dart';
import 'package:insomina/components/test/result.dart';
import 'package:insomina/models/Question.dart';
import 'package:insomina/utils/image_name.dart';
import 'package:insomina/utils/sizes.dart';

class TestSection extends StatefulWidget {
  static final String idScreen = 'TestSection';
  final String answer;
  const TestSection({Key key, this.answer}) : super(key: key);

  @override
  _TestSectionState createState() => _TestSectionState();
}

class _TestSectionState extends State<TestSection> {
  int cureentIndex = 0;
  bool isNext = false;
  bool isCorrect = false;
  bool isFinish = false;
  String selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: 'TEST SECTION'),
      body: Container(
        height: height(context),
        width: width(context),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(BgImg))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Container(
                  height: 40,
                  width: width(context),
                  decoration: BoxDecoration(color: Color(0xff246587)),
                  child: Center(
                    child: Text(
                      '${cureentIndex + 1}/${data.length}',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              IndexedStack(
                index: cureentIndex,
                alignment: Alignment.center,
                children: data
                    .map((e) => isNext
                        ? Result(
                            isFinsh: isFinish,
                            isCorrenct: isCorrect,
                            onClick: () {
                              if (cureentIndex == (data.length - 1)) {
                                setState(() {
                                  // cureentIndex = 0;
                                  // isNext = false;
                                  Navigator.pop(context);
                                });
                              } else {
                                setState(() {
                                  cureentIndex++;
                                  isNext = false;
                                });
                              }
                            },
                            orginalAns: e.orginalAnswer,
                            seletcedAns: selectedItem,
                          )
                        : ModelQueation(
                            choices: e.answers,
                            question: e.title,
                            onClick: (c) {
                              if (cureentIndex == (data.length - 1)) {
                                setState(() {
                                  selectedItem = c;
                                  if (c == e.orginalAnswer) {
                                    isCorrect = true;
                                  } else {
                                    isCorrect = false;
                                  }
                                  isNext = true;
                                  isFinish = true;
                                });
                              } else {
                                setState(() {
                                  selectedItem = c;

                                  if (c == e.orginalAnswer) {
                                    isCorrect = true;
                                  } else {
                                    isCorrect = false;
                                  }
                                  isNext = true;
                                });
                              }
                            },
                          ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
