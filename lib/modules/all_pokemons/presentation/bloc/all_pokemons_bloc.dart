import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocemon_app/core/enums/state_status.dart';
import 'package:pocemon_app/core/presentation/common_bloc_state.dart';
import 'package:pocemon_app/modules/all_pokemons/domain/entity/all_pokemons_entity.dart';
import 'package:pocemon_app/modules/all_pokemons/domain/usecase/fetch_all_pokemons_usecase.dart';
import 'package:pocemon_app/modules/all_pokemons/domain/usecase/fetch_new_page_usecase.dart';
import 'package:pocemon_app/modules/all_pokemons/presentation/bloc/all_pokemons_event.dart';

class AllPokemonsBloc
    extends Bloc<AllPokemonsEvent, CommonBlocState<AllPokemonsEntity>> {
  final FetchAllPokemonsUsecase _fetchAllPokemonsUsecase;
  final FetchNewPageUsecase _fetchNewPageUsecase;

  late AllPokemonsEntity _currentDataModel;
  AllPokemonsBloc({
    required FetchAllPokemonsUsecase fetchAllPokemonsUsecase,
    required FetchNewPageUsecase fetchNewPageUsecase,
  })  : _fetchAllPokemonsUsecase = fetchAllPokemonsUsecase,
        _fetchNewPageUsecase = fetchNewPageUsecase,
        super(
          CommonBlocState(
            status: StateStatus.init,
          ),
        ) {
    on<FetchAllPokemonsEvent>((event, emit) async {
      emit(CommonBlocState(status: StateStatus.loading));
      try {
        final result = await _fetchAllPokemonsUsecase.execute();
        _currentDataModel = result;
        emit(CommonBlocState(
          status: StateStatus.success,
          model: _currentDataModel,
        ));
      } catch (e) {
        emit(
          CommonBlocState(
            status: StateStatus.error,
            message: e.toString(),
          ),
        );
      }
    });
    on<FetchNewPageEvent>((event, emit) async {
      try {
        final result = await _fetchNewPageUsecase.execute(query: event.query);
        List<AllPokemonsItemEntity>? newList = [];
        newList.addAll(_currentDataModel.results ?? []);
        newList.addAll(result.results ?? []);
        _currentDataModel = AllPokemonsEntity(
            count: result.count,
            next: result.next,
            previous: result.previous,
            results: newList);
        emit(CommonBlocState(
            status: StateStatus.success, model: _currentDataModel));
      } catch (e) {
        emit(CommonBlocState(status: StateStatus.error));
      }
    });
  }
}
