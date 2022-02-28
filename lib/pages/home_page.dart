import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/cubit/superheroe/superheroe_cubit.dart';
import 'package:flutter_codigo4_state/pages/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Superhero"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterPage(),
            ),
          );
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<SuperheroeCubit, SuperheroeState>(
        builder: (BuildContext context, SuperheroeState state) {
          switch (state.runtimeType) {
            case SuperheroeInit:
              print("Init");
              return const Center(
                child: Text(
                  "No hay un superheroe registrado",
                ),
              );
            case SuperheroeCreate:
              return InfoSuperheroeWidget();
          }
          print(state);
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class InfoSuperheroeWidget extends StatelessWidget {
  const InfoSuperheroeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: const [
            Text(
              "Información general",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Nombre: "),
            ),
            ListTile(
              title: Text("Años de experiencia: "),
            ),
            Divider(),
            Text(
              "Poderes",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            ListTile(
              title: Text("Poder 1"),
            ),
            ListTile(
              title: Text("Poder 2"),
            ),
            ListTile(
              title: Text("Poder 3"),
            ),
            ListTile(
              title: Text("Poder 4"),
            ),
            ListTile(
              title: Text("Poder 5"),
            ),
          ],
        ),
      ),
    );
  }
}
