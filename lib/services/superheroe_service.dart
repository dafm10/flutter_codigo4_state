
import 'dart:async';

import 'package:flutter_codigo4_state/models/superhero_model.dart';

class SuperHeroeService{
  Superheroe? _superheroe;

  StreamController<Superheroe> _superheroeStream = StreamController();

  createSuperheroe(Superheroe superheroe){
    _superheroe = _superheroe;
    _superheroeStream.add(_superheroe!);
  }

  closeStream(){
    _superheroeStream.close();
  }
}