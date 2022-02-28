// abstract => indica que la clase no puede ser instanciada directamente
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superhero_model.dart';

// immutable indica que no va a cambiar, estará visible desde el cubit
@immutable
abstract class SuperheroeState {}

// Listado de estados deseados
// todos estos estados van a heredar de SuperheroeState
class SuperheroeInit extends SuperheroeState {
  final bool superheroeExist = false;
}

class SuperheroeCreate extends SuperheroeState {
  final bool superheroeExist = true;
  final Superheroe superheroe;

  SuperheroeCreate({
    required this.superheroe,
  });
}
