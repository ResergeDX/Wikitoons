import 'package:flutter/material.dart';
//import 'package:splashscreen/splashscreen.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:wikitoons/toonlist.dart';

class Chargepage extends StatefulWidget {
  @override
  _ChargepageState createState() => _ChargepageState();
}

//Pantalla de carga con Animación
class _ChargepageState extends State<Chargepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WIKITOONS',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(
        child: SplashScreen.navigate(
          name: 'assets/Television.flr',
          next: (BuildContext context) => Toonlist(),
          until: () => Future.delayed(Duration(seconds: 5)),
          loopAnimation: 'Estatica',
        ),
      ),
    );
  }
}
