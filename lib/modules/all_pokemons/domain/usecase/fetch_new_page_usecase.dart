import 'package:pocemon_app/modules/all_pokemons/domain/entity/all_pokemons_entity.dart';
import 'package:pocemon_app/modules/all_pokemons/domain/repository/all_pokemons_repository.dart';

class FetchNewPageUsecase {
  final AllPokemonsRepository _repository;

  FetchNewPageUsecase({required AllPokemonsRepository repository})
      : _repository = repository;

  Future<AllPokemonsEntity> execute({required String query}) {
    return _repository.fetchNewPage(query: query);
  }
}
