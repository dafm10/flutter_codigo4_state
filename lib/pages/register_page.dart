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
        title: StreamBuilder(
          stream: SuperheroeService().superheroeStream,
          builder: (BuildContext context, AsyncSnapshot snap) {
            if (snap.hasData) {
              Superheroe superheroe = snap.data;
              return Text("Registrar ::: ${superheroe.name}");
            }
            return const Text("Registrar");
          },
        ),
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
                    "Millonario",
                  ],
                );
                //superheroeService.createSuperheroe(batman);
                SuperheroeService().createSuperheroe(batman);
              },
              child: const Text(
                "Añadir superheroe",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {
                SuperheroeService().updateExperience(100);
              },
              child: const Text(
                "Actualizar la experiancia",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {
                SuperheroeService().addPower();
              },
              child: const Text(
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
