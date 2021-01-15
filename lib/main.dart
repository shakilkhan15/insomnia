import 'package:flutter/material.dart';
import 'package:insomina/pages/home_page.dart';
import 'package:insomina/pages/indouction.dart';
import 'package:insomina/pages/main_menu.dart';
import 'package:insomina/pages/test/test_info.dart';
import 'package:insomina/pages/test/test_section.dart';
import 'package:insomina/pages/treatments/teatment_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insomina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.idScreen,
      routes: {
        HomePage.idScreen: (BuildContext context) => HomePage(),
        Indrouction.idScreen: (BuildContext context) => Indrouction(),
        MainManu.idScreen: (BuildContext context) => MainManu(),
        TreatmentInfo.idScreen: (BuildContext context) => TreatmentInfo(),
        TestInfo.idScreen: (BuildContext context) => TestInfo(),
      TestSection.idScreen: (BuildContext context) => TestSection(),
      },
    );
  }
}
