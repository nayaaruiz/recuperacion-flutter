part of 'planet_list_bloc.dart';

@immutable
sealed class PlanetListState {}

final class PlanetListInitial extends PlanetListState {}

final class PlanetListLoading extends PlanetListState {}

final class PlanetListSuccess extends PlanetListState {
  final List<Planet> planets;
  PlanetListSuccess({required this.planets});
}

final class PlanetListEmpty extends PlanetListState {
  final String message;
  PlanetListEmpty({required this.message});
}

final class PlanetListError extends PlanetListState {
  final String message;
  PlanetListError({required this.message});
}