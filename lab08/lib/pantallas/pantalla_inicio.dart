import 'package:flutter/material.dart';
import 'pantalla_segunda.dart';

class PantallaInicio extends StatelessWidget {
  final TextEditingController _textoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Inicio'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textoController,
              decoration: InputDecoration(
                labelText: 'Ingresa un mensaje',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Ir a la Segunda Pantalla'),
              onPressed: () {
                String mensaje = _textoController.text;
                Navigator.pushNamed(
                  context,
                  '/segunda',
                  arguments: PantallaSegundaArguments(mensaje),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
