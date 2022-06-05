import 'package:flutter/material.dart';
import 'package:nunez/elementos/navigator_bar.dart';

class Desarrollador extends StatelessWidget {
  Color rojo = Color(0xFFCD0026);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desarrollador',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Desarrollador', style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: rojo,
            elevation: 5,
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/waves.png?raw=true'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage('https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/fotoPerfil.jpg?raw=true'),
                            radius: 40,
                          ),
                          Text(
                            'Adrian Nuñez',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        color: Colors.redAccent[400],
                        height: 270,
                        width: double.infinity,
                        child: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              ListTile(
                                tileColor: Colors.red,
                                title: Text(
                                  'Grupo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('6-I',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ),
                              ListTile(
                                title: Text(
                                  'Especialidad',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('Programación', style: TextStyle(fontSize: 16, color: Colors.white)),
                              ),
                              ListTile(
                                title: Text(
                                  'Escuela',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('CBTIS 128',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ),
                              ListTile(
                                title: Text(
                                  'Maestro',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('Nava',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ),
                              ListTile(
                                title: Text(
                                  'Unidad',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('3',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                navigator_bar(contexto: context, active: 'desarrollador')
              ],
            ),
          )),
    );
  }
}
