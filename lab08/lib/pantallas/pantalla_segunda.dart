import 'package:flutter/material.dart';

class PantallaSegundaArguments {
  final String mensaje;

  PantallaSegundaArguments(this.mensaje);
}

class PantallaSegunda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PantallaSegundaArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Recibimos esto:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              args.mensaje,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Regresar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
