import 'package:flutter/material.dart';

class navigator_bar extends StatelessWidget {
  navigator_bar({
    @required this.contexto,
    @required this.active,
  });

  final contexto;
  final active;

  Color rojo = Color(0xFFCD0026);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
          child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(contexto, '/inicio');
                      },
                      icon: Icon(Icons.home, color: active == 'inicio' ? rojo : Colors.grey[600]),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(contexto, '/habitaciones');
                      },
                      icon: Icon(Icons.text_snippet, color: active == 'habitaciones' ? rojo : Colors.grey[600]),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(contexto, '/clientes');
                      },
                      icon: Icon(Icons.account_circle, color: active == 'clientes' ? rojo : Colors.grey[600]),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(contexto, '/empleados');
                      },
                      icon: Icon(Icons.cases_rounded, color: active == 'empleados' ? rojo : Colors.grey[600]),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(contexto, '/conclusiones');
                      },
                      icon: Icon(Icons.textsms, color: active == 'conclusiones' ? rojo : Colors.grey[600]),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(contexto, '/desarrollador');
                      },
                      icon: Icon(Icons.manage_accounts, color: active == 'desarrollador' ? rojo : Colors.grey[600]),
                    ),
                  ],
                ),
              )),
        ));
  }
}
