import 'package:pocemon_app/modules/pokemon_dateils/domain/entity/pokemon_details_entity.dart';

abstract class AllPokemonsEvent {}

class FetchAllPokemonsEvent extends AllPokemonsEvent {}

class FetchNewPageEvent extends AllPokemonsEvent {
  final String query;

  FetchNewPageEvent({required this.query});
}

class AllPokemonSuccessState extends AllPokemonsEvent {
  final PokemonDetailsEntity details;

  AllPokemonSuccessState({required this.details});
}
