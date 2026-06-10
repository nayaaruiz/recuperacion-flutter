part of 'planet_list_bloc.dart';

@immutable
sealed class PlanetListEvent {}

final class PlanetListFetchAll extends PlanetListEvent {}