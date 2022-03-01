part of 'superheroe_bloc.dart';

@immutable
abstract class SuperheroeEvent {}

class SuperheroeCreateEvent extends SuperheroeEvent{}

class SuperheroeUpdateExperienceEvent extends SuperheroeEvent{}

class SuperheroeAddPowerEvent extends SuperheroeEvent{}
