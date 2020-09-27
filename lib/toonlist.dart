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
                //Capitan cavernícola
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/Series70/capitan_cavernicola.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "CAPITAN CAVERNÍCOLA",
                              creador: "William Hanna y Joseph Barbera",
                              info:
                                  "Captain Caveman and the Teen Angels se centra en las aventuras de resolución de misterios de los Teen Angels,Brenda, Dee Dee y Taffy, y su amigo el Capitán Caveman, un cavernícola prehistórico a quien las niñas descubrieron y descongelaron de un bloque de hielo.",
                              assetImage:
                                  "assets/Series70/capitan_cavernicola.jpg",
                              tempCaps: [1, 40],
                              colores: [
                                Colors.brown[400],
                                Colors.orange[300],
                                Colors.brown[400],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //Dinamita
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage("assets/Series70/dinamita.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "DINAMITA, EL PERRO MARAVILLA",
                              creador: "Joe Ruby Y Ken Spears",
                              info:
                                  "El programa se centra en torno a un superhéroe estilo Batman llamado Blue Falcon y su asistente, torpe pero generalmente eficaz, Dinamita, un perro robot que puede producir un número aparentemente infinito de dispositivos mecánicos de su cuerpo.",
                              assetImage: "assets/Series70/dinamita.jpg",
                              tempCaps: [1, 20],
                              colores: [
                                Colors.blue[900],
                                Colors.green[500],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //Mandibulin
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage("assets/Series70/mandibulin.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "MANDIBULÍN",
                              creador: "Joe Ruby, Ken Spears",
                              info:
                                  "Mandibulín es un gran tiburón blanco. Es el baterista de \"Los neptunos\", un grupo de rock formado por cuatro jóvenes - Biff, Shelly, Burbuja y Almeja - que viven en una civilización bajo el agua en el año 2076. Mandibulín y \"Los neptunos\" viajan a varias ciudades bajo el agua, donde aparte de tocar su música, se encuentran y hacen frente a villanos diabólicos que quieren conquistar el mundo submarino.",
                              assetImage: "assets/Series70/mandibulin.jpg",
                              tempCaps: [1, 16],
                              colores: [
                                Colors.blue[300],
                                Colors.blue[600],
                                Colors.indigo
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //Star trek
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series70/star_trek.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "STAR TREK",
                              creador: "Gene Roddenberry",
                              info:
                                  "Star Trek: La serie animada, fue una serie animada de televisión estadounidense de ciencia ficción ubicada en el universo ficticio de Star Trek y continuación de Star Trek: La serie original.",
                              assetImage: "assets/Series70/star_trek.jpg",
                              tempCaps: [2, 22],
                              colores: [
                                Colors.blue[700],
                                Colors.blue[400],
                                Colors.blue[100],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("assets/Series70/tom_and_jerry.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "TOM Y JERRY",
                              creador: "William Hanna Y Joseph Barbera",
                              info:
                                  "Serie de animación que se centra en las alocadas aventuras y desventuras de Tom, un gato doméstico cuyo único objetivo es atrapar a Jerry, provocando el caos por donde quieran que pasen.",
                              assetImage: "assets/Series70/tom_and_jerry.jpg",
                              tempCaps: [3, 164],
                              colores: [
                                Colors.blueGrey,
                                Colors.brown[300],
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
                //Garfield
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series80/garfield.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "GARFIELD YSUS AMIGOS",
                              creador: "Jim Davis",
                              info:
                                  "Cada episodio consiste de dos segmentos de Garfield, dos Quickies, cortos basados en las tiras cómicas, en algunas ocasiones, los Quickies son Screaming with Binky (Gritando con Binky) y un Orson's Farm",
                              assetImage: "assets/Series80/garfield.jpg",
                              tempCaps: [7, 121],
                              colores: [Colors.orange, Colors.black12],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //Inspecto gadget
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image:
                            AssetImage("assets/Series80/inspecto_gadget.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "INSPECTOR GADGET",
                              creador: "Bruno Bianchi",
                              info:
                                  "Cuenta las aventuras del Inspector Gadget, un detective torpe y despistado que es en realidad un cyborg con artilugios (gadgets) biónicos implantados en su cuerpo. Sus misiones consisten en detener los planes de su enemigo el Dr. Gang, líder de la malvada organización MAD",
                              assetImage: "assets/Series80/inspecto_gadget.jpg",
                              tempCaps: [2, 86],
                              colores: [
                                Colors.grey,
                                Colors.grey[700],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series80/pitufos.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LOS PITUFOS",
                              creador: "Peyo",
                              info:
                                  "En lo más profundo del bosque, un conjunto de setas de colores conforma el hogar de los pitufos. La frondosidad del paisaje junto con el tamaño diminuto de sus casitas, juega en favor de estos enanos: es el escondite perfecto para escapar de las garras del malvado Gargamel y de su gato Azrael.",
                              assetImage: "assets/Series80/pitufos.jpg",
                              tempCaps: [9, 421],
                              colores: [
                                Colors.blue,
                                Colors.blue[200],
                                Colors.white10,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series80/simpsons.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LOS SIMPSONS",
                              creador: "Matt Groening",
                              info:
                                  "La serie es una sátira de la sociedad estadounidense que narra la vida y el día a día de una familia de clase media de ese país (cuyos miembros son Homero, Marge, Bart, Lisa y Maggie Simpson) que vive en un pueblo ficticio llamado Springfield.",
                              assetImage: "assets/Series80/simpsons.jpg",
                              tempCaps: [31, 684],
                              colores: [
                                Colors.yellow,
                                Colors.amber,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series80/thundercats.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "THUNDERCATS",
                              creador: "Tobin Wolf",
                              info:
                                  "ThunderCats: Los felinos cósmicos sigue las aventuras del equipo de héroes los ThunderCats, que es un grupo de felinos humanoides extraterrestres, muy avanzados tecnológicamente pero involucran al misticismo y a fuerzas sobrenaturales, llegando a vivir en un planeta azul que ellos llamaron Tercer Planeta.",
                              assetImage: "assets/Series80/thundercats.jpg",
                              tempCaps: [2, 130],
                              colores: [
                                Colors.orange[800],
                                Colors.redAccent[700]
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series80/tortugas_ninja.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LAS TORTUGAS NINJA",
                              creador: "Kevin Eastman y Peter Laird",
                              info:
                                  "En la ciudad de Nueva York, cuatro tortugas ninjas mutantes viven en las alcantarillas: Leonardo, Raphael, Donatello y Miguel Ángel. Después de on la ayuda de April o'Neil y Casey Jones, se dedican a proteger a los humanos de la ciudad del malvado Krang, los mutantes y pandilleros que la atacan.",
                              assetImage: "assets/Series80/tortugas_ninja.jpg",
                              tempCaps: [10, 193],
                              colores: [
                                Colors.orange,
                                Colors.blue,
                                Colors.red,
                                Colors.purple,
                                Colors.green
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
                        image: AssetImage("assets/Series90/animaniacs.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "ANIMANIACS",
                              creador: "	Tom Ruegger",
                              info:
                                  "El humor de Animaniacs fue una transfusión de los recuerdos con payasadas, referencias a la cultura del momento, violencia animada y locuras. La serie incluyó una serie de segmentos educativos que abarca temas tales como historia, matemáticas, geografía, ciencias y estudios sociales. Es un programa de variedad, con secciones cortas en las que aparecen un gran número de personajes.",
                              assetImage: "assets/Series90/animaniacs.jpg",
                              tempCaps: [5, 99],
                              colores: [Colors.yellow, Colors.orange],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/bob_esponja.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "BOB ESPONJA",
                              creador: "Stephen Hillenburg",
                              info:
                                  "La serie narra las aventuras y los esfuerzos del personaje del título y sus diversos amigos en la ficticia ciudad submarina de Fondo de Bikini. Es la quinta serie animada estadounidense de más larga duración, su popularidad la ha convertido en una franquicia.",
                              assetImage: "assets/Series90/bob_esponja.jpg",
                              tempCaps: [12, 263],
                              colores: [Colors.yellow, Colors.orange[300]],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/catdog.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "CATDOG",
                              creador: "Peter Hannan",
                              info:
                                  " La serie muestra la vida de unos hermanos siameses no idénticos con una mitad que es gato y otra un perro. ",
                              assetImage: "assets/Series90/catdog.jpg",
                              tempCaps: [4, 68],
                              colores: [Colors.orangeAccent, Colors.blue],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/corage.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "CORAJE, EL PERRO COBARDE",
                              creador: "John R. Dilworth",
                              info:
                                  "Se centra en un perro llamado Coraje, quien vive aventuras de carácter sobrenatural en el medio de \"Ningún lugar\", mismas que implican peligros para sus ancianos dueños, Muriel y Justo Bolsa",
                              assetImage: "assets/Series90/corage.jpg",
                              tempCaps: [4, 52],
                              colores: [
                                Colors.pink[100],
                                Colors.pink[300],
                                Colors.pink[500],
                                Colors.black87
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/dexter_lab.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "EL LABORATORIO DE DEXTER",
                              creador: "Genndy Tartakovsky",
                              info:
                                  "La serie gira en torno a Dexter, un niño genio de pelo rojo con un laboratorio secreto lleno con una colección de sus inventos. Dexter a veces se encuentra constantemente en conflicto con su escandalosa pero simpática hermana Dee Dee, quien siempre logra entrar a su laboratorio a pesar de sus esfuerzos por mantenerla fuera de él, así como a Cerebro, su archirrival.",
                              assetImage: "assets/Series90/dexter_lab.jpg",
                              tempCaps: [4, 78],
                              colores: [
                                Colors.green,
                                Colors.black87,
                                Colors.green
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/doug.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "DOUG",
                              creador: "Jim Jinkins",
                              info:
                                  "La serie trata sobre un joven llamado Doug Narinas, quien vive con sus padres, Phil y Theda, su hermana Judy y su perro Chuletas (un perro no muy común) en Cuentington. Vive diferentes historias en su escuela y en su casa junto a su mejor amigo Tito Valentino y vive eternamente enamorado de Patti Mayonaisse.",
                              assetImage: "assets/Series90/doug.png",
                              tempCaps: [1, 117],
                              colores: [
                                Colors.green,
                                Colors.brown[400],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/hey_arnold.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "¡OYE, ARNOLD!",
                              creador: "Craig Bartlett",
                              info:
                                  "la vida de un niño de 9 años en los suburbios del pueblo en el que vive; Arnold, junto a sus amigos, cursan el cuarto grado de primaria en la escuela pública 118 de Hillwood City, una gran ciudad ficticia ubicada en el estado de Washington, pero que mezcla elementos de New York, Seattle, y hasta de Londres.",
                              assetImage: "assets/Series90/hey_arnold.jpg",
                              tempCaps: [5, 100],
                              colores: [
                                Colors.yellow,
                                Colors.blue,
                                Colors.red,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/ppg.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LAS CHICAS SUPERPODEROSAS",
                              creador: "Craig McCracken",
                              info:
                                  "Sus historias de acción-aventura se centran en Bombón, Burbuja y Bellota, tres niñas de edad preescolar que poseen superpoderes y combaten el crimen —particularmente a su archienemigo Mojo Jojo— en la ciudad ficticia de Saltadilla, Estados Unidos. Viven con su creador, el profesor Utonium, y tras desempeñarse como defensoras regresan a sus ocupaciones como niñas normales.",
                              assetImage: "assets/Series90/ppg.jpg",
                              tempCaps: [6, 68],
                              colores: [
                                Colors.pink,
                                Colors.lightBlue,
                                Colors.green
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/recreo.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "RECREO",
                              creador: " Paul Germain y Joe Ansolabehere",
                              info:
                                  "La serie gira en torno a seis estudiantes, T.J. Detweiler, líder de la pandilla, Vince LaSalle, el mejor amigo de T.J. y fan de los deportes, Spinelli una chica ruda, Gretchen Grundler, la cerebrito del grupo, Mikey Blumberg, un niño indimidante en estatura, pero amable y Gus Griswald, el alumno nuevo",
                              assetImage: "assets/Series90/recreo.jpg",
                              tempCaps: [6, 65],
                              colores: [
                                Colors.white54,
                                Colors.red,
                                Colors.white54,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image:
                            AssetImage("assets/Series90/rocko_modern_life.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LA VIDA MODERNA DE ROCKO",
                              creador: " Joe Murray",
                              info:
                                  "Esta serie animada trataba de un wallaby llamado Rocko que vivía en una ciudad llamada O-Town con su perro Spunky y otros personajes con los que convivía su día a día.",
                              assetImage:
                                  "assets/Series90/rocko_modern_life.jpg",
                              tempCaps: [4, 52],
                              colores: [
                                Colors.blue,
                                Colors.orange,
                                Colors.blue
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/thornberrys.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LOS THORNBERRYS",
                              creador:
                                  "Arlene Klasky, Gabor Csupo, Steve Pepoon, David Silverman, Stephen Sustarsic",
                              info:
                                  "Trata del recorrido de Nigel y Marianne Thornberry, alrededor del mundo con su familia que hace documentales sobre la fauna, con Nigel como narrador y Marianne como camarógrafa. La familia tiene tres niños: sus hijas Deborah y Eliza, un niño salvaje adoptado llamado Donnie y un chimpancé llamado Darwin. Las aventuras también giran sobre todo en torno a Eliza que tiene la capacidad de hablar con los animales.",
                              assetImage: "assets/Series90/thornberrys.jpg",
                              tempCaps: [5, 91],
                              colores: [
                                Colors.orange,
                                Colors.yellow,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series90/rugrats.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "RUGRATS",
                              creador:
                                  "Arlene Klasky, Gábor Csupó, Paul Germain",
                              info:
                                  "El programa trata acerca de un grupo de bebés llamados Tommy Pickles, Carlitos Finster, los gemelos Fili y Lili , la prima de Tommy llamada Angelica Pickles y Susie Carmichael. Con el transcurso de las temporadas se fueron agregando personajes como Dil Pickles y Kimi.",
                              assetImage: "assets/Series90/rugrats.jpg",
                              tempCaps: [9, 172],
                              colores: [
                                Colors.blue[100],
                                Colors.blue[500],
                                Colors.blue[900],
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
                //BEN10
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/ben10.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "BEN 10",
                              creador:
                                  "Duncan Rouleau, Joe Casey, Joe Kelly, Steven T. Seagle",
                              info:
                                  "Es un niño de 10 años,que descubre un reloj alienígena el cual le permite convertirse en 10 héroes (alienígenas) diferentes cada uno con sus propias habilidades, que usa para ayudar a los demás contra los villanos.",
                              assetImage: "assets/Series2000/ben10.jpg",
                              tempCaps: [4, 80],
                              colores: [
                                Colors.lightGreen,
                                Colors.green,
                                Colors.greenAccent[400]
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/billy_mandy.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LAS SOMBRIAS AVENTURAS DE BILLY Y MANDY",
                              creador: "Maxwell Atoms",
                              info:
                                  "En la serie, los dos personajes de 10 años principales, Billy y Mandy, han invocado y obligado a La Muerte, Puro Hueso a ser su mejor amigo para siempre después de ganar una apuesta relacionada con el hámster enfermo de Billy.",
                              assetImage: "assets/Series2000/billy_mandy.jpg",
                              tempCaps: [6, 83],
                              colores: [
                                Colors.black45,
                                Colors.red,
                                Colors.white
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/chowder.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "CHOWDER",
                              creador: "C. H. Greenblatt",
                              info:
                                  "El protagonista es un joven aprendiz de cocinero llamado Chowder que vive con su mentor Mung (Garbanzo en España) en la ficticia Ciudad Mazapán. El programa combina animación con escenas de stop-motion y marionetas.",
                              assetImage: "assets/Series2000/chowder.jpg",
                              tempCaps: [3, 49],
                              colores: [
                                Colors.purpleAccent,
                                Colors.purple,
                                Colors.indigo,
                                Colors.purple,
                                Colors.purpleAccent,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/el tigre.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "EL TIGRE: LAS AVENTURAS DE MANNY RIVERA",
                              creador: "Jorge R. Gutiérrez, Sandra Equihua",
                              info:
                                  "El show se centra en Manny Rivera, un chico Mexicano quien vive en Ciudad Milagro. Él tiene un cinturón mágico que le da súper poderes al girar su hebilla y lo convierte en El Tigre. Sin embargo, él frecuentemente se pregunta si usar sus poderes para el bien como su heroico padre Rodolfo, quien también es el valiente superhéroe Pantera Blanca, o para cometer crímenes, como su abuelo, el criminal Puma Loco.",
                              assetImage: "assets/Series2000/el tigre.jpg",
                              tempCaps: [1, 26],
                              colores: [
                                Colors.brown,
                                Colors.amber,
                                Colors.orange,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/flapjack.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LAS MARAVILLOSAS DESVENTURAS DE FLAPJACK",
                              creador: "Thurop Van Orman",
                              info:
                                  "Flapjack es un niño de nueve años, criado por una ballena parlante llamada Bubbie, ambos llevan una vida tranquila hasta que deben rescatar a un pirata llamado Capitán Nudillos, y él le cuenta a Flapjack sobre la Isla Acaramelada. Flapjack busca aventuras que vivir junto al capitán Nudillos, el cual solo busca aprovecharse de lo que pueda para conseguir caramelos y un billete de ida a la isla y Bubbie se encarga de ser la voz de la razón en todas sus extrañas aventuras y desventuras .",
                              assetImage: "assets/Series2000/flapjack.jpg",
                              tempCaps: [3, 46],
                              colores: [
                                Colors.red,
                                Colors.grey,
                                Colors.red,
                                Colors.grey,
                                Colors.red,
                                Colors.grey,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/jimmy.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie:
                                  "LAS AVENTURAS DE JIMMY NEUTRóN: EL NIÑO GENIO",
                              creador: "John A. Davis",
                              info:
                                  "The Adventures of Jimmy Neutron: Boy Genius sigue las aventuras de Jimmy, su fiel perro-robot Goddard y sus amigos y familia en la ciudad de Retroville, Texas. Para hacer su vida un poco más interesante, Jimmy se la pasa inventando aparatos tecnológicos y cosas increíbles, pero éstas suelen fallar a menudo; y debe salvar su ciudad de las consecuencias.",
                              assetImage: "assets/Series2000/jimmy.jpg",
                              tempCaps: [3, 64],
                              colores: [
                                Colors.blue,
                                Colors.yellow,
                                Colors.blue
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/knd.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "KND: LOS CHICOS DEL BARRIO",
                              creador: "Tom Warburton",
                              info:
                                  "basada en la vida de un grupo de cinco chicos menores de 10 años (Sector V) que encaran la lucha contra la tiranía de los adultos que intentan imponer su disciplina y sus reglas a los niños de toda la Tierra. Su residencia es: en la Casa del Árbol y allí toman sus decisiones como grupo aunque reciben órdenes del comando central ubicado en la Base Lunar. ",
                              assetImage: "assets/Series2000/knd.jpg",
                              tempCaps: [6, 78],
                              colores: [
                                Colors.red,
                                Colors.blue,
                                Colors.green,
                                Colors.orange,
                                Colors.purple,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/lazlo.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "EL CAMPAMENTO DE LAZLO",
                              creador: "Joe Murray",
                              info:
                                  "Es un mono araña brasileño amante de la diversión que siempre está muy alegre. Dentro del campamento, vive en la cabaña Jalea/Gelatina junto a sus 2 mejores amigos: Raj y Clam. Es muy simpático y positivo, lo que resulta en ocasiones molesto.",
                              assetImage: "assets/Series2000/lazlo.jpg",
                              tempCaps: [5, 61],
                              colores: [Colors.orange, Colors.green[300]],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image:
                            AssetImage("assets/Series2000/mansion_foster.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "MANSION FOSTER PARA AMIGOS IMAGINARIOS",
                              creador: "  Craig McCracken",
                              info:
                                  "Muchos niños tienen amigos imaginarios pero los abandonan al crecer, por eso existe el \"hogar de Foster\" una mansión donde se hospedan los amigos imaginarios de toda la infancia que son abandonados por sus creadores al crecer, pueden vivir hasta ser adoptados por otro niño. Mac, un niño de 8 años de gran inteligencia y corazón y su amigo imaginario Blooregard Q. Kazoo o (simplemente Bloo) viven sus aventuras allí, ya que no quieren separarse aún.",
                              assetImage:
                                  "assets/Series2000/mansion_foster.jpg",
                              tempCaps: [6, 79],
                              colores: [Colors.blue, Colors.red],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/padrinos.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LOS PADRINOS MÁGICOS",
                              creador: "Butch Hartman",
                              info:
                                  "Timmy Turner es un niño de 10 años al que nadie entiende, poco popular y a veces molestado por sus compañeros. ... Los padrinos mágicos son seres que se le asignan a los niños que no llevan una vida feliz, para concederle deseos.",
                              assetImage: "assets/Series2000/padrinos.jpeg",
                              tempCaps: [10, 172],
                              colores: [
                                Colors.lightGreen,
                                Colors.pinkAccent,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/samurai_jack.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "SAMURAI JACK",
                              creador: "Genndy Tartakovsky",
                              info:
                                  "Samurai Jack cuenta la historia de un joven príncipe cuyo imperio ha sido destruido por un demonio caído de los cielos llamado Aku. Jack consigue huir de la destrucción y dedica el resto de su vida a entrenarse para poder recuperar su reino y derrotar Aku, vengando así la muerte de todo su pueblo.",
                              assetImage: "assets/Series2000/samurai_jack.jpg",
                              tempCaps: [5, 63],
                              colores: [Colors.red, Colors.black87],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/timesquad.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "EL ESCUADRÓN DEL TIEMPO",
                              creador: "Dave Wasson",
                              info:
                                  "La serie sigue al Escuadrón del Tiempo, que viajan a través del tiempo asegurándose de que el pasado se quede en el lugar correcto.Compuesto por Buck Tuddrussel (el capitan), Larry 3000 (robot arrogante) y Otto  (aficionado a la historia, huérfano recogido). Su frase? \"Hacer cumplir el pasado para proteger nuestro futuro\".",
                              assetImage: "assets/Series2000/timesquad.jpg",
                              tempCaps: [1, 26],
                              colores: [
                                Colors.yellow,
                                Colors.amber,
                                Colors.white,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2000/eds.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "ED, EDD Y EDDY",
                              creador: "Danny Antonucci",
                              info:
                                  "Ed, Edd y Eddy es una serie de animación infantil en la que tres peculiares amigos tratan de hacer lo que sea con tal de conseguir caramelos gigantes en forma de bola.",
                              assetImage: "assets/Series2000/eds.jpg",
                              tempCaps: [6, 69],
                              colores: [
                                Colors.yellow,
                                Colors.orange,
                                Colors.green,
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
                        image:
                            AssetImage("assets/Series2010/adventure_time.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "HORA DE AVENTURA",
                              creador: "Pendleton Ward",
                              info:
                                  "La serie sigue las aventuras de Finn, un niño humano, y su mejor amigo y hermano adoptivo Jake, un perro con poderes mágicos para cambiar de forma, crecer o reducirse a voluntad. Pendleton Ward, describe a Finn como un \"niño pequeño de fuego con moral fuerte\". Finn y Jake viven en la Tierra post-apocalíptica de Ooo.",
                              assetImage:
                                  "assets/Series2010/adventure_time.jpg",
                              tempCaps: [10, 283],
                              colores: [
                                Colors.white,
                                Colors.blue,
                                Colors.yellowAccent,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/amphibia.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "AMPHIBIA",
                              creador: "Matt Braly",
                              info:
                                  "La serie cuenta las aventuras de Anne Boonchuy, una chica de 13 años. Después de robar un misterioso cofre del tesoro, es transportada mágicamente a Amphibia, una pantanosa y salvaje zona habitada por una raza de anfibios parlantes. Pronto conoce y se hace amiga de un joven sapo aventurero llamado Sprig Plantar, que la guiará para ser una verdadera heroína, mientras descubre como volver a su mundo y la primera verdadera amistad de su vida.",
                              assetImage: "assets/Series2010/amphibia.jpg",
                              tempCaps: [2, 40],
                              colores: [
                                Colors.blueAccent,
                                Colors.greenAccent,
                                Colors.redAccent,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/ducktales.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "DUCKTALES",
                              creador: "Matt Youngberg",
                              info:
                                  "Después de no hablarse durante diez años, Rico McPato  se reencuentra con el Pato Donald, después de que él y sus tres sobrinos Hugo, Paco y Luis se trasladen a la Mansión McPato. La presencia de los recién llegados reaviva el espíritu de aventura de McPato, llevando al grupo a realizar muchas nuevas expediciones de caza del tesoro y resolver misterios, mientras que los sobrinos y su nueva amiga Rosita",
                              assetImage: "assets/Series2010/ducktales.jpg",
                              tempCaps: [2, 47],
                              colores: [
                                Colors.blueAccent,
                                Colors.greenAccent,
                                Colors.redAccent,
                                Colors.pinkAccent
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/escandalosos.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "ESCANDALOSOS",
                              creador: "Daniel Chong",
                              info:
                                  "Tres hermanos osos, Pardo, Panda y Polar, intentarán integrarse de maneras muy extrañas en la sociedad humana, haciendo cualquier cosa. En el camino a se \"osos modernos\" interactuan con varias personas, como con Nom Nom, Chloe, Charlie, entre otros.",
                              assetImage: "assets/Series2010/escandalosos.jpg",
                              tempCaps: [4, 140],
                              colores: [
                                Colors.brown,
                                Colors.black54,
                                Colors.white60,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image:
                            AssetImage("assets/Series2010/gravity_falls.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "GRAVITY FALLS",
                              creador: "Alex Hirsch",
                              info:
                                  "Enviados por sus padres a pasar sus vacaciones de verano con su tío abuelo Stan a la Cabaña del Misterio, una trampa para turistas ubicada en Gravity Falls, Oregón, propiedad de Stan. Dipper, a través de un diario que habla de las rarezas de Gravity Falls, resolverá junto a su hermana Mabel los misterios que acechan en el pueblo.",
                              assetImage: "assets/Series2010/gravity_falls.jpg",
                              tempCaps: [2, 40],
                              colores: [
                                Colors.green,
                                Colors.deepOrange,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/gumball.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "EL INCREIBLE MUNDO DE GUMBALL",
                              creador: "Ben Bocquelet",
                              info:
                                  "La serie gira en torno a la vida de un gato azul llamado Gumball Watterson y sus frecuentes travesuras en la ficticia ciudad estadounidense de Elmore, acompañado por su hermano adoptivo y mejor amigo, Darwin.",
                              assetImage: "assets/Series2010/gumball.jpg",
                              tempCaps: [6, 240],
                              colores: [
                                Colors.blueAccent,
                                Colors.orangeAccent,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/harvey beaks.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "HARVEY BEAKS",
                              creador: "C. H. Greenblatt",
                              info:
                                  "\"Las reglas se hicieron para romperse\" es un modismo que está a punto de hacerse realidad para los jóvenes de Harvey Beaks, un ave con una cabeza grande y un corazón aún más grande.",
                              assetImage: "assets/Series2010/harvey beaks.jpg",
                              tempCaps: [2, 52],
                              colores: [
                                Colors.lightGreen,
                                Colors.lightBlue,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.lightGreenAccent,
                      image: DecorationImage(
                        image:
                            AssetImage("assets/Series2010/infinity_train.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "INFINITY TRAIN",
                              creador: "Owen Dennis",
                              info:
                                  "La serie es una antología animada, cuya trama transcurre en torno a un tren de gran envergadura y aparentemente infinito que viaja a través de un paisaje árido en un universo paralelo. El tren se aparece traspasando la realidad y recoge pasajeros que tienen problemas emocionales no resueltos teletransportándolos a otra dimensión.",
                              assetImage:
                                  "assets/Series2010/infinity_train.jpg",
                              tempCaps: [3, 30],
                              colores: [
                                Colors.greenAccent[700],
                                Colors.lightGreenAccent,
                                Colors.lightGreenAccent[100],
                                Colors.lightGreenAccent,
                                Colors.greenAccent[700],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/loud house.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "LOUD HOUSE",
                              creador: "Chris Savino",
                              info:
                                  "Lincoln Loud, un niño de 11 años que vive en una casa con sus 10 hermanas (5 mayores y 5 menores), tiene que tratar de sobrevivir entre ellas ideando soluciones ingeniosas a los problemas y el caos que vive de forma cotidiana.",
                              assetImage: "assets/Series2010/loud house.jpg",
                              tempCaps: [5, 104],
                              colores: [
                                Colors.orangeAccent,
                                Colors.orange[300],
                                Colors.white10,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/OK KO.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "!O, K.O.! SEAMOS HÉROES",
                              creador: "Ian Jones-Quartey",
                              info:
                                  "K.O. (nombre completo Kaio Kincaid) es el protagonista principal de ¡OK, KO! Seamos Héroes. Él lucha contra los de Boxmore, junto con Rad y Enid. Su jefe es el Sr. Gar, el propietario de Plaza Lakewood Turbo. También tiene una mejor amiga y compañera de clase llamada Dendy.",
                              assetImage: "assets/Series2010/OK KO.jpg",
                              tempCaps: [3, 112],
                              colores: [Colors.red, Colors.blue],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                //OTGW
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/otgw.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "OVER THE GARDEN WALL",
                              creador: "Patrick McHale",
                              info:
                                  "La miniserie se centra alrededor de Wirt (Elijah Wood), su hermanastro menor Greg (Collin Dean) y su rana, quienes terminan perdidos en un extraño bosque llamado Lo Desconocido. Con el fin de encontrar su camino a casa, los dos deben viajar a través de este bosque, al parecer mágico, lleno de toda clase de criaturas y animales.",
                              assetImage: "assets/Series2010/otgw.jpg",
                              tempCaps: [1, 10],
                              colores: [
                                Colors.green,
                                Colors.green[700],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/owl_house.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "THE OWL HOUSE",
                              creador: "Dana Terrace",
                              info:
                                  "Luz Noceda es una chica humana adolescente que accidentalmente se topa con un portal a otro mundo en lugar de ir al Reality Check Camp, un campamento de verano de detención juvenil ubicado en Detroit Lakes, Minnesota. Cuando está en Boiling Isles, que está hecha de los restos de un titán muerto, se hace amiga de la bruja rebelde Eda, la Dama Búho, y de su adorable compañero demonio llamado King. A pesar de no tener habilidades mágicas, Luz persigue su sueño de convertirse en bruja.",
                              assetImage: "assets/Series2010/owl_house.jpg",
                              tempCaps: [1, 19],
                              colores: [
                                Colors.amber,
                                Colors.red,
                                Colors.black54,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/phineasferb.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "PHINEAS Y FERB",
                              creador: "Dan Povenmire y Jeff \"Swampy\" Marsh",
                              info:
                                  "La serie sigue las aventuras de los hermanastros Phineas Flynn  y Ferb Fletcher , que viven en la ciudad ficticia de Danville, en un área de los Tres Estados, ya que buscan formas de ocupar su tiempo durante sus vacaciones de verano.",
                              assetImage: "assets/Series2010/phineasferb.jpg",
                              tempCaps: [4, 146],
                              colores: [
                                Colors.orangeAccent,
                                Colors.lightGreenAccent,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage("assets/Series2010/regular show.jpg"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "UN SHOW MÁS ",
                              creador: "J. G. Quintel",
                              info:
                                  "Está protagonizada por dos amigos, Mordecai (un arrendajo azul) y Rigby (un mapache), encargados de mantenimiento en un parque, que buscan cualquier excusa para no trabajar. En su día a día viven múltiples aventuras, muchas de ellas de carácter surrealista, en las que también interactúan el resto de los personajes.",
                              assetImage: "assets/Series2010/regular show.jpg",
                              tempCaps: [8, 261],
                              colores: [
                                Colors.blue[600],
                                Colors.grey,
                                Colors.brown,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.indigo,
                      image: DecorationImage(
                        image:
                            AssetImage("assets/Series2010/STEVEN_UNIVERSE.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          ChangePageRoute(
                            InfoSerie(
                              serie: "STEVEN UNIVERSER",
                              creador: "Rebecca Sugar",
                              info:
                                  "Steven Universe es una historia contada desde la perspectiva de Steven, un hibrido entre un humano y una gema, el protagonista y miembro más joven del equipo llamado las Gemas de Cristal, guardianes de la tierra de origen espacial Garnet, Perla y Amatista",
                              assetImage:
                                  "assets/Series2010/STEVEN_UNIVERSE.jpg",
                              tempCaps: [5, 160],
                              colores: [
                                Colors.pink[300],
                                Colors.redAccent,
                                Colors.purple,
                                Colors.white12
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
}
