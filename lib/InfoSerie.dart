import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoSerie extends StatefulWidget {
  InfoSerie({
    this.serie,
    this.info,
    this.creador,
    this.assetImage,
    this.tempCaps,
    this.colores,
  });
  final String serie;
  final String info;
  final String creador;
  final String assetImage;
  final List<int> tempCaps;
  final List<Color> colores;

  @override
  _InfoSerieState createState() => _InfoSerieState();
}

class _InfoSerieState extends State<InfoSerie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          fondoSerie(),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  _infoAppBar(context),
                  Expanded(child: Container()),
                  _datosSerie(),
                  Expanded(child: Container()),
                  favorite(),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Método para el cambio de color
  Widget fondoSerie() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          //COLORS recibe la lista enviada en la ventana anterior
          colors: widget.colores,
        ),
      ),
    );
  }

  //Appbar con el nombre de la serie
  Widget _infoAppBar(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          child: FlatButton(
            padding: EdgeInsets.only(right: 16, top: 7),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_left,
              size: 35,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            widget.serie,
            style: GoogleFonts.ranchers(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        )),
      ],
    );
  }

  //Funcion para desplegar la información de la serie
  Widget _datosSerie() {
    return Center(
      child: Column(
        children: [
          Container(
            width: 300,
            //height: 250,
            //decoration: BoxDecoration(
            //color: Colors.indigo[500],
            //borderRadius: BorderRadius.circular(10),
            //),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(widget.assetImage),
                height: 180,
              ),
            ),
          ),
          SizedBox(height: 20),
          //Contenedor que tiene la información base de la serie
          Container(
            //width: 0,
            height: 350,
            //decoration: BoxDecoration(
            //color: Colors.indigo[500],
            //borderRadius: BorderRadius.circular(10),
            //),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Sinopsis:',
                  style: GoogleFonts.ranchers(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    widget.info,
                    style: TextStyle(fontSize: 16, color: Colors.yellow[50]),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Text(
                  'Creador',
                  style: GoogleFonts.ranchers(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    widget.creador,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.yellow[50],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Temporadas:',
                      style: GoogleFonts.ranchers(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      widget.tempCaps[0].toString(),
                      style: TextStyle(fontSize: 24, color: Colors.yellow[50]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Capitulos:',
                      style: GoogleFonts.ranchers(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      widget.tempCaps[1].toString(),
                      style: TextStyle(fontSize: 24, color: Colors.yellow[50]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget favorite() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          color: Colors.pink[400],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {},
          child: Row(
            children: [
              Text('Favorito'),
              Icon(Icons.star_border),
            ],
          ),
        ),
      ],
    );
  }
}
