import 'package:flutter/material.dart';
import 'package:insomina/pages/About.dart';
import 'package:insomina/pages/Contact.dart';
import 'package:insomina/pages/indouction.dart';
import 'package:insomina/pages/main_menu.dart';

class HomePage extends StatefulWidget {
  static final String idScreen = 'HomePage';
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scffoldKey.currentState.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 100,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                 Navigator.pushNamed(context, AboutPage.idScreen);
              },
              title: Text('About'),
            ),
            ListTile(
              onTap: () {
                 Navigator.pushNamed(context, ContactPage.idScreen);
              },
              title: Text('Contact us'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
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
                Image.asset('assets/images/logo.png'),
                SizedBox(
                  height: 20,
                ),
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
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      15,
                    )),
                    color: Colors.black,
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Indrouction.idScreen);
                    }),
                RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      15,
                    )),
                    color: Colors.black,
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MainManu.idScreen);
                    }),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 5,
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                _scffoldKey.currentState.openDrawer();
              },
            ),
          )
        ],
      ),
    );
  }
}
