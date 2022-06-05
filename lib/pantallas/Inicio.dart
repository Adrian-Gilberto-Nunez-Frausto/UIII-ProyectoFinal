import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nunez/elementos/navigator_bar.dart';

class Inicio extends StatelessWidget {
  Color rojo = Color(0xFFCD0026);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_bg.jpg?raw=true'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_logo.png?raw=true',
                      width: 170,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(30),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Buscar hotel',
                            prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                                child: Text(
                                  '¿Te encuentras ya en tu hotel?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                child: Text(
                                  'Haz click en el siguiente enlace para ver todos las habitaciones disponibles',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                                child: ElevatedButton(
                                  child: Text(
                                    'Ver servicios',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    minimumSize: Size(200, 55),
                                    primary: rojo,
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/habitaciones');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              navigator_bar(contexto: context, active: 'inicio')
            ],
          ),
        ),
      ),
    );
  }
}
