import 'package:pocemon_app/modules/all_pokemons/domain/entity/all_pokemons_entity.dart';

class AllPokemonsModel extends AllPokemonsEntity {
  AllPokemonsModel({
    required super.count,
    required super.next,
    required super.previous,
    required super.results,
  });

  factory AllPokemonsModel.fromJson(Map<String, dynamic> json) {
    return AllPokemonsModel(
        count: json['count'],
        next: json['next'],
        previous: json['previous'],
        results: json['results'] != null
            ? (json['results'] as List<dynamic>)
                .map((e) => AllPokemonsItemModel.fromJson(e))
                .toList()
            : []);
  }
}

class AllPokemonsItemModel extends AllPokemonsItemEntity {
  AllPokemonsItemModel({
    required super.name,
    required super.url,
  });

  factory AllPokemonsItemModel.fromJson(Map<String, dynamic> json) {
    return AllPokemonsItemModel(name: json['name'], url: json['url']);
  }
}
