import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nunez/elementos/navigator_bar.dart';

class Clientes extends StatelessWidget {
  Color rojo = Color(0xFFCD0026);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clientes',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clientes', style: TextStyle(color: Colors.white)),
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                      child: Text(
                        'Registro de Clientes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Nombre',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelStyle: TextStyle(color: rojo),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: rojo,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Apellido',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelStyle: TextStyle(color: rojo),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: rojo,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: 'Edad',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 3, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelStyle: TextStyle(color: rojo),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: rojo,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: 'Codigo Postal',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 3, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelStyle: TextStyle(color: rojo),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: rojo,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Correo Electronico',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelStyle: TextStyle(color: rojo),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: rojo,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'CURP',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelStyle: TextStyle(color: rojo),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: rojo,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'RFC (opcional)',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelStyle: TextStyle(color: rojo),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: rojo,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Correo Electronico',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelStyle: TextStyle(color: rojo),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: rojo,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Contraseña',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelStyle: TextStyle(color: rojo),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: rojo,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: rojo,
                          minimumSize: Size(double.infinity, 50),
                          shape: StadiumBorder(),
                        ),
                        onPressed: () {},
                        child: Text(
                          'GUARDAR REGISTRO',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
              navigator_bar(contexto: context, active: 'clientes')
            ],
          ),
        ),
      ),
    );
  }
}
