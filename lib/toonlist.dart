import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Toonlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          fondoMetas(),
          SafeArea(
            child: Column(
              children: [
                _cambioText(),
                Expanded(child: Container()),
                Text('Lista de series'),
                Expanded(child: Container()),
                listaSeries(context),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  } //Build

  Widget fondoMetas() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black,
            Colors.grey,
            Colors.white,
          ],
        ),
      ),
    );
  } //Fondos

  Widget _cambioText() {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: SizedBox(
        width: 350.0,
        child: FadeAnimatedTextKit(
            repeatForever: true,
            text: [
              "\nWIKITOONS\n",
              "Las generaciones de\nanimación",
              "Animación\nsin limites"
            ],
            textStyle: GoogleFonts.ranchers(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.bottomCenter // or Alignment.topLeft
            ),
      ),
    );
  } //Fade Text

  Widget listaSeries(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 130,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 100,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/cartoon.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin: EdgeInsets.only(top: 85, left: 2),
                    child: Text(
                      "Cartoon",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 100,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/cartoon.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin: EdgeInsets.only(top: 85, left: 2),
                    child: Text(
                      "Cartoon",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 100,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/cartoon.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin: EdgeInsets.only(top: 85, left: 2),
                    child: Text(
                      "Cartoon",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 100,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/cartoon.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin: EdgeInsets.only(top: 85, left: 2),
                    child: Text(
                      "Cartoon",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
