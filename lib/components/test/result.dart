import 'package:flutter/material.dart';
import 'package:insomina/pages/home_page.dart';
import 'package:insomina/utils/sizes.dart';

class Result extends StatelessWidget {
  final String seletcedAns;
  final String orginalAns;
  final Function onClick;
  bool isCorrenct = false;
  bool isFinsh = false;
  Result(
      {Key key,
      this.isCorrenct,
      this.onClick,
      this.isFinsh,
      this.orginalAns,
      this.seletcedAns})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: width(context),
            height: 40,
            decoration:
                BoxDecoration(color: isCorrenct ? Colors.green : Colors.red),
            child: Center(
                child: Text(
              'Answer',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            )),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "YOUR ANSWER IS ${isCorrenct ? 'CORRECT' : 'INCORRECT'}",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          ),
           SizedBox(
            height: 10,
          ),
          isCorrenct
              ? Text(
                  "You Answered : ${seletcedAns}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              : Text(
                  "Correct answer : ${orginalAns}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              """
If you travel and cross times zone often for work, you are at high risk of insomnia. The same holds true if
you work overnights or a rotating shift. These lifestyle throw off your internal clock, which set you sleep 
and waking time . Long lasting stress– whether it is related to a job or other issues- can also trigger insomnia.

               """,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            onPressed: onClick,
            color: Colors.black,
            child: Text(
              isFinsh ? 'RETAKE TEST' : 'Next',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          isFinsh
              ? RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomePage.idScreen);
                  },
                  color: Colors.black,
                  child: Text(
                    'BACK TO MAIN MENU',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
