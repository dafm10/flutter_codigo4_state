import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superhero_model.dart';
import 'package:flutter_codigo4_state/services/superheroe_service.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Registrar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Superheroe batman = Superheroe(
                  name: "Barman",
                  experience: 20,
                  powers: [
                    "Inteligenicia",
                    "Artes Marciales",
                    "Millonario"
                  ],
                );
                //superheroeService.createSuperheroe(batman);
                SuperheroeService().createSuperheroe(batman);
              },
              child: Text(
                "Añadir superheroe",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Actualizar la experiancia",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Añadir poderes",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
