import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superhero_model.dart';
import 'package:flutter_codigo4_state/providers/superheroe_provider.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Aqui estamos a la escucha de lo que ocurre
    final SuperheroProvider _superheroProvider =
        Provider.of<SuperheroProvider>(context);

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
                Superheroe superman = Superheroe(
                  name: "Superman",
                  experience: 3,
                  powers: [
                    "Super fuerza",
                    "Visión láser",
                    "Volar",
                    "Visión X"
                  ],
                );
                _superheroProvider.createSuperhero(superman);
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
