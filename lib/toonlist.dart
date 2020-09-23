import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Toonlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            fondoMetas(),
            SafeArea(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  _cambioText(),
                  //Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Lista de series de los 60',
                      style: GoogleFonts.ranchers(
                        fontSize: 25.0,
                        color: Colors.cyan[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  //Expanded(child: Container()),
                  listaSeries60(context),
                  //Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Lista de series de los 70',
                      style: GoogleFonts.ranchers(
                        fontSize: 25.0,
                        color: Colors.green[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  //Expanded(child: Container()),
                  listaSeries70(context),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Lista de series de los 80',
                      style: GoogleFonts.ranchers(
                        fontSize: 25.0,
                        color: Colors.yellow[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  //Expanded(child: Container()),
                  listaSeries80(context),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Lista de series de los 90',
                      style: GoogleFonts.ranchers(
                        fontSize: 25.0,
                        color: Colors.orange[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  //Expanded(child: Container()),
                  listaSeries90(context),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Lista de series de los 2000',
                      style: GoogleFonts.ranchers(
                        fontSize: 25.0,
                        color: Colors.red[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  //Expanded(child: Container()),
                  listaSeries2000(context),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Lista de series del 2010',
                      style: GoogleFonts.ranchers(
                        fontSize: 25.0,
                        color: Colors.purple[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  //Expanded(child: Container()),
                  listaSeries2010(context),
                  botones(),
                ],
              ),
            ),
          ],
        ),
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
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      padding: EdgeInsets.all(5),
      //decoration: BoxDecoration(color: Colors.blue),
      child: SizedBox(
        width: 350.0,
        height: 70.0,
        child: FadeAnimatedTextKit(
            repeatForever: true,
            text: [
              "WIKITOONS",
              "Las generaciones de la animación",
              "Animación sin limites"
            ],
            textStyle: GoogleFonts.ranchers(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.bottomCenter // or Alignment.topLeft
            ),
      ),
    );
  } //Fade Text

  Widget botones() {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            color: Colors.teal[400],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Seguir',
                  style: TextStyle(fontSize: 18),
                ),
                Icon(Icons.star_border),
              ],
            ),
          ),
          SizedBox(width: 30),
          FlatButton(
              color: Colors.pink[400],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'Me gusta',
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.favorite_border),
                ],
              )),
        ],
      ),
    );
  }

  void mensajeLike(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.pink[400],
          elevation: 25,
          title: Text('\t\tGracias por darle Me gusta :) ',
              style: TextStyle(fontSize: 30, color: Colors.blue[900])),
        );
      },
    );
  }

//Listas series
  Widget listaSeries60(BuildContext context) {
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

  Widget listaSeries70(BuildContext context) {
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

  Widget listaSeries80(BuildContext context) {
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

  Widget listaSeries90(BuildContext context) {
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

  Widget listaSeries2000(BuildContext context) {
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

  Widget listaSeries2010(BuildContext context) {
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
