import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Color rojo = Color(0xFFCD0026);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/login_bg.jpg?raw=true'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                'https://github.com/Adrian-Gilberto-Nunez-Frausto/Gpo-6toiI-Mis-Imagenes-UI/blob/main/hotel_logo.png?raw=true',
                width: 200,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                child: Column(
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Ingresar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(double.infinity, 55),
                        primary: rojo,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/inicio');
                      },
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: ElevatedButton(
                        child: Text(
                          'Registro de clientes',
                          style: TextStyle(
                            color: rojo,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          minimumSize: Size(double.infinity, 55),
                          primary: Colors.white,
                          side: BorderSide(
                            color: rojo,
                            width: 2.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/clientes');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
