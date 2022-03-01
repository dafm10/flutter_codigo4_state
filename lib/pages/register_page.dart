import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/cubit/superheroe/superheroe_bloc.dart';
import 'package:flutter_codigo4_state/models/superhero_model.dart';

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
                Superheroe batmanman = Superheroe(
                  name: "Batmanman",
                  experience: 10,
                  powers: [
                    "Gargola",
                    "Es rico"
                  ],
                );

                BlocProvider.of<SuperheroeBloc>(context).add(
                  SuperheroeCreateEvent(superheroe: batmanman),
                );
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
                BlocProvider.of<SuperheroeBloc>(context).add(
                  SuperheroeUpdateExperienceEvent(experience: 1000),
                );
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
                BlocProvider.of<SuperheroeBloc>(context).add(
                  SuperheroeAddPowerEvent(powers: "fuerte"),
                );
              },
              child: const Text(
                "Añadir poderes",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {
                BlocProvider.of<SuperheroeBloc>(context).add(
                  SuperheroeDeleteEvent(),
                );
              },
              child: const Text(
                "Eliminar",
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
