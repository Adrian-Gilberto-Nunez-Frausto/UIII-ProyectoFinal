import 'package:flutter/material.dart';
import 'package:nunez/elementos/navigator_bar.dart';
import 'package:nunez/elementos/habitacionesGridChild.dart';

class Habitaciones extends StatelessWidget {
  Color rojo = Color(0xFFCD0026);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'habitaciones',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Habitaciones',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: rojo,
          elevation: 1,
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
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        height: 580,
                        child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1,
                          ),
                          // scrollDirection: Axis.vertical,
                          children: [
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room1.jpg?raw=true',
                              nombre: 'Deluxe King',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room2.jpg?raw=true',
                              nombre: 'Deluxe Double',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room3.jpg?raw=true',
                              nombre: 'Master Suite',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room4.jpg?raw=true',
                              nombre: 'Junior Suite',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room5.jpg?raw=true',
                              nombre: 'Suite',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room1.jpg?raw=true',
                              nombre: 'Gran Suit',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room2.jpg?raw=true',
                              nombre: 'Indiviuales',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room3.jpg?raw=true',
                              nombre: 'Dobles',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room4.jpg?raw=true',
                              nombre: 'Cuadruples',
                            ),
                            habitacionesGridChild(
                              imagen: 'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_room5.jpg?raw=true',
                              nombre: 'Real Suit',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 75,
                    ),
                  ],
                ),
              ),
              navigator_bar(
                contexto: context,
                active: 'habitaciones',
              )
            ],
          ),
        ),
      ),
    );
  }
}
