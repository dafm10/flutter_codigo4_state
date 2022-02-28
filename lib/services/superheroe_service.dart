
import 'dart:async';
import 'dart:math';

import 'package:flutter_codigo4_state/models/superhero_model.dart';

class SuperheroeService{

  // Aplicamos Singleton modo 1
  SuperheroeService._();

  static final SuperheroeService _instance = SuperheroeService._();

  factory SuperheroeService(){
    return _instance;
  }
  // fin singleton modo 1

  Superheroe? _superheroe;
  // se añade broadcast para que pueda ser llamado en multiples paginas
  StreamController<Superheroe> _superheroeStream = StreamController.broadcast();

  Stream<Superheroe> get superheroeStream => _superheroeStream.stream;

  Superheroe get superheroe => _superheroe!;

  createSuperheroe(Superheroe superheroe){
    _superheroe = superheroe;
    print(superheroe);
    _superheroeStream.add(_superheroe!);
  }

  updateExperience(int experience){
    _superheroe!.experience = experience;
    _superheroeStream.add(_superheroe!);
  }

  closeStream(){
    _superheroeStream.close();
  }
}

// modo 2 de crear singleton, primero ponemos la clase en privado
/*
final superheroeService = _SuperheroeService();*/
