part of 'poke_bloc.dart';

abstract class PokeState extends Equatable {
  const PokeState();

  @override
  List<Object> get props => [];
}

class PokeInitial extends PokeState {
  const PokeInitial();

  @override
  List<Object> get props => [];
}

class Loading extends PokeState {
  final bool isLoading;
  const Loading(this.isLoading);

  @override
  List<Object> get props => [isLoading];
}

class Loaded extends PokeState {
  final PokemonDescription pokemonDescription;
  const Loaded({required this.pokemonDescription});

  @override
  List<Object> get props => [pokemonDescription];
}

class LoadedRandomPokemon extends PokeState {
  final PokemonDescription pokemonDescription;
  const LoadedRandomPokemon({required this.pokemonDescription});

  @override
  List<Object> get props => [pokemonDescription];
}

class ErrorState extends PokeState {
  final String errorMessage;
  const ErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
