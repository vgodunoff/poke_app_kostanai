part of 'poke_bloc.dart';

abstract class PokeEvent extends Equatable {
  const PokeEvent();

  @override
  List<Object> get props => [];
}

class FetchData extends PokeEvent {
  final String name;
  final bool isRandom;
  const FetchData({required this.isRandom, this.name = ''});

  @override
  List<Object> get props => [isRandom, name];
}

class FetchRandomData extends PokeEvent {
  const FetchRandomData();

  @override
  List<Object> get props => [];
}
