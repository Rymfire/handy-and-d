import 'package:handy_and_d/core/enums/role.dart';

class CharacterModel {
  CharacterModel(
      {required this.name,
      required this.role,
      required this.race,
      required this.xp,
      required this.maxHP,
      required this.ac});

  final String name;
  final Role role;
  final String race;
  final int xp;
  final int maxHP;
  final int ac;

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      name: json["name"],
      role: Role.values[json["role"]],
      race: json["race"],
      xp: json["xp"],
      maxHP: json["maxHP"],
      ac: json["ac"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "role": role.index,
        "race": race,
        "xp": xp,
        "maxHP": maxHP,
        "ac": ac,
      };
}
