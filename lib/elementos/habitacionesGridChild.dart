import 'package:flutter/material.dart';

class habitacionesGridChild extends StatelessWidget {
  habitacionesGridChild({@required this.imagen, @required this.nombre});

  final imagen;
  final nombre;

  Color rojo = Color(0xFFCD0026);

  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage('$imagen'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              color: rojo,
              child: Center(
                child: Text(
                  '$nombre',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
