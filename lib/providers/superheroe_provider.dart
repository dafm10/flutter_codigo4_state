
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superhero_model.dart';

class SuperheroProvider with ChangeNotifier {

  Superheroe? _superheroe;

  Superheroe get superheroe => _superheroe!;

  createSuperhero(Superheroe superheroe){
    _superheroe = superheroe;
    notifyListeners();
  }

  bool get checkSuperhero => _superheroe != null;

}