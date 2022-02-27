
import 'dart:async';

import 'package:flutter_codigo4_state/models/superhero_model.dart';

class _SuperheroeService{

  /*// Aplicamos Singleton modo 1
  SuperheroeService._();

  static final SuperheroeService _instance = SuperheroeService._();

  factory SuperheroeService(){
    return _instance;
  }
  // fin singleton modo 1*/

  Superheroe? _superheroe;

  StreamController<Superheroe> _superheroeStream = StreamController();

  Stream<Superheroe> get superheroeStream => _superheroeStream.stream;

  Superheroe get superheroe => _superheroe!;

  createSuperheroe(Superheroe superheroe){
    _superheroe = superheroe;
    _superheroeStream.add(_superheroe!);
  }

  closeStream(){
    _superheroeStream.close();
  }
}

// modo 2 de crear singleton, primero ponemos la clase en privado
final superheroeService = _SuperheroeService();