import 'package:flutter/material.dart';
import 'package:nunez/elementos/navigator_bar.dart';

class Conclusiones extends StatelessWidget {
  Color rojo = Color(0xFFCD0026);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conclusiones',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conclusion', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: rojo,
          elevation: 5,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Text(
                      'Como conclusion del proyecto puedo decir que me sirvio para poder realizar aplicaciones en flutter que tambien sirven para crear aplicaciones en android o en ios, ya que flutter es una solucion multiplataforma para el desarrollo de apliaciones, y no solo sirve para apps en movil, tambien en web, sin duda es una gran herramienta para el desarrollo de apps, ya que tiene una facil y entendible estructura de widgets y lennguaje, por lo que se hace facil y en poco tiempo el desarollar y personalizar una aplicacione para lo que estemos buscando, en mi caso el tema que me toco es de un hotel, en esta aplicacion se utilizaron conocimientos previos vistos en clase como lo pueden sernlos widgets de center, de title, column, row, tabbar, circleavatar, listview, gridview, etc.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              navigator_bar(contexto: context, active: 'conclusiones')
            ],
          ),
        ),
      ),
    );
  }
}
