import 'package:flutter/material.dart';
import 'package:nunez/elementos/navigator_bar.dart';

class Empleados extends StatelessWidget {
  Color rojo = Color(0xFFCD0026);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empleados',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: rojo,
            centerTitle: true,
            title: Text(
              'Empleados',
              style: TextStyle(color: Colors.white),
            ),
            bottom: TabBar(
              tabs: [
                Tab(child: Text('Lista de empleados', style: TextStyle(color: Colors.white))),
                Tab(child: Text('Registro', style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: SizedBox(
                            height: 500,
                            width: double.infinity,
                            child: ListView(
                              children: ListTile.divideTiles(
                                context: context,
                                tiles: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado1.jpg?raw=true'),
                                    ),
                                    title: Text('Kara Whitaker'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado2.jpg?raw=true'),
                                    ),
                                    title: Text('Amanda Vega'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado3.jpg?raw=true'),
                                    ),
                                    title: Text('Melissa Bullock'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado4.jpg?raw=true'),
                                    ),
                                    title: Text('Mrs. Brittany Kelly'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado5.jpg?raw=true'),
                                    ),
                                    title: Text('Karen Henry'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado6.jpg?raw=true'),
                                    ),
                                    title: Text('Paul Hopkins'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado7.jpg?raw=true'),
                                    ),
                                    title: Text('Rachel Gregory'),
                                  ),
                                ],
                              ).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    navigator_bar(contexto: context, active: 'empleados')
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10), child: Text('Solicitud de trabajo', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: 'Nombre',
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
                    navigator_bar(contexto: context, active: 'empleados')
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
