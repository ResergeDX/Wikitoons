import 'package:flutter/material.dart';
import 'package:wikitoons/ChargePage.dart';
import 'package:wikitoons/toonlist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wikitoons',
      routes: {
        'chargepage': (BuildContext context) => Chargepage(),
        'toonlist': (BuildContext context) => Toonlist(),
      },
      initialRoute: 'chargepage',
    );
  }
}
