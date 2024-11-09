import 'package:dio/dio.dart';
import 'package:pocemon_app/modules/all_pokemons/data/model/all_pokemons_model.dart';
import 'package:pocemon_app/modules/all_pokemons/domain/entity/all_pokemons_entity.dart';
import 'package:pocemon_app/modules/all_pokemons/domain/repository/all_pokemons_repository.dart';

class AllPokemonsRepositoryImpl implements AllPokemonsRepository {
  final Dio _dio;

  AllPokemonsRepositoryImpl({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<AllPokemonsEntity> fetchAllPokemons() async {
    final result = await _dio.get('pokemon');
    return AllPokemonsModel.fromJson(result.data);
  }

  @override
  Future<AllPokemonsEntity> fetchNewPage({required String query}) async {
    final result = await _dio.get(query);
    return AllPokemonsModel.fromJson(result.data);
  }
}
