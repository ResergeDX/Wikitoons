import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'InfoSerie.dart';
import 'transition.dart';

class Toonlist extends StatefulWidget {
  @override
  _ToonlistState createState() => _ToonlistState();
}

class _ToonlistState extends State<Toonlist> {
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
            height: 150,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                //Don gato
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                    //color: Colors.indigo,
                    image: DecorationImage(
                      image: AssetImage("assets/Series60/don_gato.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "DON GATO",
                              creador: "William Hanna y Joseph Barbera",
                              info:
                                  "Don Gato, un gato con modales corteses que vive en un callejón con otro grupo de gatos los cuales se las ingenian para ganarse la vida, vigilados por el Oficial Matute.",
                              assetImage: "assets/Series60/don_gato.jpg",
                              tempCaps: [1, 30],
                              colores: [Colors.yellow[400], Colors.purple[700]],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //La pantera rosa
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.pink[400],
                      image: DecorationImage(
                        image: AssetImage("assets/Series60/pantera_rosa.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LA PANTERA ROSA",
                              creador: "David H. DePatie y Friz Freleng",
                              info:
                                  "La pantera rosa (título en inglés: The Pink Panther) es la primera serie del personaje homónimo, nacida a raíz del imprevisto éxito del personaje animado que aparecía en los créditos de la película homónima de Blake Edwards.",
                              assetImage: "assets/Series60/pantera_rosa.jpg",
                              tempCaps: [15, 124],
                              colores: [
                                Colors.pink[100],
                                Colors.pinkAccent[400],
                                //Colors.pink[700]
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //Picapiedras
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series60/Picapiedras.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LOS PICAPIEDRAS",
                              creador: "William Hanna y Joseph Barbera",
                              info:
                                  "La serie está centrada en Pedro Picapiedra y Pablo Mármol, un par de hombres que reflejaban la clase media de la sociedad estadounidense, y en sus sufridas esposas, Betty y Vilma, quienes tenían que aguantar las ideas de Pedro y la complicidad obligatoria de Pablo, de donde nunca salían bien.",
                              assetImage: "assets/Series60/Picapiedras.jpg",
                              tempCaps: [6, 166],
                              colores: [
                                Colors.amber[900],
                                Colors.yellow,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //Scooby doo
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series60/scooby_doo.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "SCOOBY DOO",
                              creador: "William Hanna y Joseph Barbera",
                              info:
                                  "Las versiones más conocidas incluyen a un perro de raza gran danés parlante llamado Scooby-Doo y a cuatro adolescentes llamados Fred Jones, Daphne Blake, Vilma Dinkley y Shaggy Rogers, los cuales viajan a lo largo del mundo en una camioneta llamada \"La Máquina del Misterio\", por la cual se transportan de un lugar a otro resolviendo misterios relacionados con fantasmas y otras fuerzas sobrenaturales. ",
                              assetImage: "assets/Series60/scooby_doo.jpg",
                              tempCaps: [3, 42],
                              colores: [
                                Colors.blue[200],
                                Colors.lightGreenAccent[400],
                                Colors.orange,
                                Colors.blue[200],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //Supersónicos
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series60/supersonicos.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LOS SUPERSÓNICOS",
                              creador: "William Hanna y Joseph Barbera",
                              info:
                                  "Los Supersónicos se encuentran en el año 2062 donde viven en casas suspendidas en el aire mediante enormes soportes y se transportan en aeroautos. La serie refleja como se vería la vida con el avance del tiempo y la tecnología.",
                              assetImage: "assets/Series60/supersonicos.jpg",
                              tempCaps: [3, 75],
                              colores: [
                                Colors.blue[100],
                                Colors.grey,
                                Colors.blue[100],
                                Colors.grey,
                              ],
                            ),
                          ),
                        );
                      },
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
            height: 150,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
            height: 150,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
            height: 150,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
            height: 150,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
            height: 150,
            width: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
                  width: 250,
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
