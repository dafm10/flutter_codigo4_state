
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superhero_model.dart';

class SuperheroProvider with ChangeNotifier {

  Superheroe? _superheroe;

  Superheroe get superheroe => _superheroe!;

  createSuperhero(Superheroe superheroe){
    _superheroe = superheroe;
    notifyListeners();
  }

  updateExperience(int experience){
    _superheroe!.experience = experience;
    notifyListeners();
  }
  addPower(){
    _superheroe!.powers.add("Power");
    notifyListeners();
  }

  deleteSuperhero(){
    _superheroe = null;
    notifyListeners();
  }

  bool get checkSuperhero => _superheroe != null;

}