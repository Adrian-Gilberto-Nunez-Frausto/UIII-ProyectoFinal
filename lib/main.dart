import 'package:flutter/material.dart';
import 'package:nunez/pantallas/Login.dart';
import 'package:nunez/pantallas/Inicio.dart';
import 'package:nunez/pantallas/Clientes.dart';
import 'package:nunez/pantallas/Empleados.dart';
import 'package:nunez/pantallas/Habitaciones.dart';
import 'package:nunez/pantallas/Conclusiones.dart';
import 'package:nunez/pantallas/Desarrollador.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/inicio': (context) => Inicio(),
        '/clientes': (context) => Clientes(),
        '/empleados': (context) => Empleados(),
        '/habitaciones': (context) => Habitaciones(),
        '/conclusiones': (context) => Conclusiones(),
        '/desarrollador': (context) => Desarrollador(),
      },
    );
  }
}
