import 'package:bloc/bloc.dart';
import 'package:flutter_recuperacion/core/models/character_list_response.dart';
import 'package:flutter_recuperacion/core/services/character_list_service.dart';
import 'package:meta/meta.dart';

part 'character_list_event.dart';
part 'character_list_state.dart';

class CharacterListBloc extends Bloc<CharacterListEvent, CharacterListState> {
  CharacterListBloc(CharacterListService service) : super(CharacterListInitial()) {
    on<CharacterListEvent>((event, emit) async {
      emit(CharacterListLoading());
      try {
        var apiCharacters = await service.getCharacters();
        emit(CharacterListSuccess(characters: apiCharacters));
      } catch (e) {
        emit(CharacterListError(message: e.toString()));
      }
    });
  }
}
