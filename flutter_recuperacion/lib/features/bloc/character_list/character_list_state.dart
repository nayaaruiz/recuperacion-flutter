part of 'character_list_bloc.dart';

@immutable
sealed class CharacterListState {}

final class CharacterListInitial extends CharacterListState {}

final class CharacterListLoading extends CharacterListState {}

final class CharacterListSuccess extends CharacterListState {
  final List<Character> characters;
  CharacterListSuccess({required this.characters});
}

final class CharacterListEmpty extends CharacterListState {
  final String message;
  CharacterListEmpty({required this.message});
}

final class CharacterListError extends CharacterListState {
  final String message;
  CharacterListError({required this.message});
}