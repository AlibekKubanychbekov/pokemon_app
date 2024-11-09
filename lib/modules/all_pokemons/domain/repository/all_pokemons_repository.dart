import 'package:pocemon_app/modules/all_pokemons/domain/entity/all_pokemons_entity.dart';

abstract class AllPokemonsRepository {
  Future<AllPokemonsEntity> fetchAllPokemons();

  Future<AllPokemonsEntity> fetchNewPage({required String query});
}
