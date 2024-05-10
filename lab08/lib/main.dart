import 'package:flutter/material.dart';
import 'pantallas/pantalla_inicio.dart';
import 'pantallas/pantalla_segunda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => PantallaInicio(), // Ruta para la pantalla de inicio
        '/segunda': (context) => PantallaSegunda(), // Ruta para la segunda pantalla
      },
    );
  }
}
