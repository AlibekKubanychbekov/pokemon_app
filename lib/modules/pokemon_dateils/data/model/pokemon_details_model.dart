class PokemonDetailsModel {
  List<PokemonAbilitiesModel>? abilities;
  int? baseExperience;
  CriesModel? cries;
  List<GameIndicesModel>? gameIndices;
  int? height;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<MovesModel>? moves;
  String? name;
  int? order;
  PokemonSingleAbilityModel? species;
  SpritesModel? sprites;
  List<StatsModel>? stats;
  List<TypesModel>? types;
  int? weight;

  PokemonDetailsModel(
      {this.abilities,
      this.baseExperience,
      this.cries,
      this.gameIndices,
      this.height,
      this.id,
      this.isDefault,
      this.locationAreaEncounters,
      this.moves,
      this.name,
      this.order,
      this.species,
      this.sprites,
      this.stats,
      this.types,
      this.weight});

  PokemonDetailsModel.fromJson(Map<String, dynamic> json) {
    if (json['abilities'] != null) {
      abilities = <PokemonAbilitiesModel>[];
      json['abilities'].forEach((v) {
        abilities!.add(PokemonAbilitiesModel.fromJson(v));
      });
    }
    baseExperience = json['base_experience'];
    cries = json['cries'] != null ? CriesModel.fromJson(json['cries']) : null;
    if (json['game_indices'] != null) {
      gameIndices = <GameIndicesModel>[];
      json['game_indices'].forEach((v) {
        gameIndices!.add(GameIndicesModel.fromJson(v));
      });
    }
    height = json['height'];
    id = json['id'];
    isDefault = json['is_default'];
    locationAreaEncounters = json['location_area_encounters'];
    if (json['moves'] != null) {
      moves = <MovesModel>[];
      json['moves'].forEach((v) {
        moves!.add(MovesModel.fromJson(v));
      });
    }
    name = json['name'];
    order = json['order'];
    species = json['species'] != null
        ? PokemonSingleAbilityModel.fromJson(json['species'])
        : null;
    sprites =
        json['sprites'] != null ? SpritesModel.fromJson(json['sprites']) : null;
    if (json['stats'] != null) {
      stats = <StatsModel>[];
      json['stats'].forEach((v) {
        stats!.add(StatsModel.fromJson(v));
      });
    }
    if (json['types'] != null) {
      types = <TypesModel>[];
      json['types'].forEach((v) {
        types!.add(TypesModel.fromJson(v));
      });
    }
    weight = json['weight'];
  }
}

class PokemonAbilitiesModel {
  PokemonSingleAbilityModel? ability;
  bool? isHidden;
  int? slot;

  PokemonAbilitiesModel({this.ability, this.isHidden, this.slot});

  PokemonAbilitiesModel.fromJson(Map<String, dynamic> json) {
    ability = json['ability'] != null
        ? PokemonSingleAbilityModel.fromJson(json['ability'])
        : null;
    isHidden = json['is_hidden'];
    slot = json['slot'];
  }
}

class PokemonSingleAbilityModel {
  String? name;
  String? url;

  PokemonSingleAbilityModel({this.name, this.url});

  PokemonSingleAbilityModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}

class CriesModel {
  String? latest;
  String? legacy;

  CriesModel({this.latest, this.legacy});

  CriesModel.fromJson(Map<String, dynamic> json) {
    latest = json['latest'];
    legacy = json['legacy'];
  }
}

class GameIndicesModel {
  int? gameIndex;
  PokemonSingleAbilityModel? version;

  GameIndicesModel({this.gameIndex, this.version});

  GameIndicesModel.fromJson(Map<String, dynamic> json) {
    gameIndex = json['game_index'];
    version = json['version'] != null
        ? PokemonSingleAbilityModel.fromJson(json['version'])
        : null;
  }
}

class MovesModel {
  PokemonSingleAbilityModel? move;
  List<VersionGroupDetails>? versionGroupDetails;

  MovesModel({this.move, this.versionGroupDetails});

  MovesModel.fromJson(Map<String, dynamic> json) {
    move = json['move'] != null
        ? PokemonSingleAbilityModel.fromJson(json['move'])
        : null;
    if (json['version_group_details'] != null) {
      versionGroupDetails = <VersionGroupDetails>[];
      json['version_group_details'].forEach((v) {
        versionGroupDetails!.add(VersionGroupDetails.fromJson(v));
      });
    }
  }
}

class VersionGroupDetails {
  int? levelLearnedAt;
  PokemonSingleAbilityModel? moveLearnMethod;
  PokemonSingleAbilityModel? versionGroup;

  VersionGroupDetails(
      {this.levelLearnedAt, this.moveLearnMethod, this.versionGroup});

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    levelLearnedAt = json['level_learned_at'];
    moveLearnMethod = json['move_learn_method'] != null
        ? PokemonSingleAbilityModel.fromJson(json['move_learn_method'])
        : null;
    versionGroup = json['version_group'] != null
        ? PokemonSingleAbilityModel.fromJson(json['version_group'])
        : null;
  }
}

class SpritesModel {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;
  OtherModel? other;
  SpritesModel({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
    this.other,
  });

  SpritesModel.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    other = json['other'] != null ? OtherModel.fromJson(json['other']) : null;
  }
}

class OtherModel {
  DreamWorld? dreamWorld;
  Home? home;
  OfficialArtwork? officialArtwork;
  Showdown? showdown;

  OtherModel({
    this.dreamWorld,
    this.home,
    this.officialArtwork,
    this.showdown,
  });

  OtherModel.fromJson(Map<String, dynamic> json) {
    dreamWorld = json['dream_world'] != null
        ? DreamWorld.fromJson(json['dream_world'])
        : null;
    home = json['home'] != null ? Home.fromJson(json['home']) : null;
    officialArtwork = json['official-artwork'] != null
        ? OfficialArtwork.fromJson(json['official-artwork'])
        : null;
    showdown =
        json['showdown'] != null ? Showdown.fromJson(json['showdown']) : null;
  }
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

  DreamWorld.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }
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

  Home.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }
}

class OfficialArtwork {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  OfficialArtwork({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  OfficialArtwork.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }
}

class Showdown {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  Showdown({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  Showdown.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }
}

class StatsModel {
  int? baseStat;
  int? effort;
  PokemonSingleAbilityModel? stat;

  StatsModel({this.baseStat, this.effort, this.stat});

  StatsModel.fromJson(Map<String, dynamic> json) {
    baseStat = json['base_stat'];
    effort = json['effort'];
    stat = json['stat'] != null
        ? PokemonSingleAbilityModel.fromJson(json['stat'])
        : null;
  }
}

class TypesModel {
  int? slot;
  PokemonSingleAbilityModel? type;

  TypesModel({this.slot, this.type});

  TypesModel.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    type = json['type'] != null
        ? PokemonSingleAbilityModel.fromJson(json['type'])
        : null;
  }
}
