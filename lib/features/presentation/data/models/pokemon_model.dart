class PokemonModel {
  final int id;
  final String name;
  final String sprite;
  final List<dynamic> stats;
  final List<dynamic> types;
  final String color;

  PokemonModel({
    required this.id,
    required this.name,
    required this.sprite,
    required this.stats,
    required this.types,
    required this.color,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      sprite: json['sprites']?['other']?['dream_world']?['front_default'] ?? '',
      stats: json['stats'] ?? [],
      types: json['types'] ?? [],
      color: json['color']?['name'] ?? '',
    );
  }
}
