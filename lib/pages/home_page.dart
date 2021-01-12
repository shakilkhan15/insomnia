import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Picture40.jpg'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Courseware: Insomnia',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '“Help your dream come true”',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'First time user?',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  15,
                )),
                color: Colors.black,
                child: Text(
                  'Yes',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {}),
            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  15,
                )),
                color: Colors.black,
                child: Text(
                  'No',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
