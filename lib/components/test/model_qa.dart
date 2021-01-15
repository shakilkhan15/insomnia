import 'package:flutter/material.dart';

typedef Function ONClick(String item);

class ModelQueation extends StatefulWidget {
  final String question;
  final List<String> choices;
  final ONClick onClick;
  ModelQueation({Key key, this.question, this.choices, this.onClick})
      : super(key: key);

  @override
  _ModelQueationState createState() => _ModelQueationState();
}

class _ModelQueationState extends State<ModelQueation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              widget.question,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: ListView.builder(
              itemCount: widget.choices.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                String c = widget.choices[index];
                return ListTile(
                    onTap: () {
                      widget.onClick(c);
                    },
                    title: Center(
                      child: Text(
                        '${c}',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
