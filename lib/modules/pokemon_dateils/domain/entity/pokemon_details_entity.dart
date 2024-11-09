class PokemonDetailsEntity {
  List<PokemonAbilitiesEntity>? abilities;
  int? baseExperience;
  CriesEntity? cries;
  List<GameIndicesEntity>? gameIndices;
  int? height;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<MovesEntity>? moves;
  String? name;
  int? order;
  PokemonSingleAbilityEntity? species;
  SpritesEntity? sprites;
  List<StatsEntity>? stats;
  List<TypesEntity>? types;
  int? weight;

  PokemonDetailsEntity({
    required this.abilities,
    required this.baseExperience,
    required this.cries,
    required this.gameIndices,
    required this.height,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });
}

class PokemonAbilitiesEntity {
  PokemonSingleAbilityEntity? ability;
  bool? isHidden;
  int? slot;

  PokemonAbilitiesEntity({this.ability, this.isHidden, this.slot});
}

class PokemonSingleAbilityEntity {
  String? name;
  String? url;

  PokemonSingleAbilityEntity({this.name, this.url});
}

class CriesEntity {
  String? latest;
  String? legacy;

  CriesEntity({
    this.latest,
    this.legacy,
  });
}

class GameIndicesEntity {
  int? gameIndex;
  PokemonSingleAbilityEntity? version;

  GameIndicesEntity({this.gameIndex, this.version});
}

class MovesEntity {
  PokemonSingleAbilityEntity? move;

  MovesEntity({
    this.move,
  });
}

class SpritesEntity {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;
  OtherEntity? other;

  SpritesEntity(
      {this.frontDefault,
      this.frontShiny,
      this.backDefault,
      this.backShiny,
      this.other});
}

class OtherEntity {
  DreamWorld? dreamWorld;
  Home? home;
  OfficialArtwork? officialArtwork;
  Showdown? showdown;

  OtherEntity({
    this.dreamWorld,
    this.home,
    this.officialArtwork,
    this.showdown,
  });
}

class DreamWorld {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  DreamWorld({
    this.frontDefault,
    this.frontShiny,
    this.backDefault,
    this.backShiny,
  });
}

class Home {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  Home({
    this.frontDefault,
    this.frontShiny,
    this.backDefault,
    this.backShiny,
  });
}

class OfficialArtwork {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  OfficialArtwork({
    this.frontDefault,
    this.frontShiny,
    this.backDefault,
    this.backShiny,
  });
}

class Showdown {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  Showdown({
    this.frontDefault,
    this.frontShiny,
    this.backDefault,
    this.backShiny,
  });
}

class StatsEntity {
  int? baseStat;
  int? effort;
  PokemonSingleAbilityEntity? stat;

  StatsEntity({this.baseStat, this.effort, this.stat});
}

class TypesEntity {
  int? slot;
  PokemonSingleAbilityEntity? type;

  TypesEntity({this.slot, this.type});
}
