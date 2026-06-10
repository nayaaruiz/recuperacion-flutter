import 'package:bloc/bloc.dart';
import 'package:flutter_recuperacion/core/models/planet_list_response.dart';
import 'package:flutter_recuperacion/core/services/planet_list_service.dart';
import 'package:meta/meta.dart';

part 'planet_list_event.dart';
part 'planet_list_state.dart';

class PlanetListBloc extends Bloc<PlanetListEvent, PlanetListState> {
  PlanetListBloc(PlanetListService service) : super(PlanetListInitial()) {
    on<PlanetListEvent>((event, emit) async {
      emit(PlanetListLoading());
      try {
        var apiPlanets = await service.getPlanets();
        emit(PlanetListSuccess(planets: apiPlanets));
      } catch (e) {
        emit(PlanetListError(message: e.toString()));
      }
    });
  }
}
