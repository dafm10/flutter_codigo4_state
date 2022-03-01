class Superheroe {
  String name;
  int experience;
  List<String> powers;

  Superheroe({
    required this.name,
    required this.experience,
    required this.powers,
  });

  Superheroe copyWith({String? name, int? experience, List<String>? powers}) {
    return Superheroe(
      name: name ?? this.name,
      experience: experience ?? this.experience,
      powers: powers ?? this.powers,
    );
  }
}
