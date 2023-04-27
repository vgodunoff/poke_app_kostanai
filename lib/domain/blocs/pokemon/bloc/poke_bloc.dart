import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:poke_app_kostanai/domain/api_clients/api_client.dart';
import 'package:poke_app_kostanai/domain/blocs/pokemon/bloc/repository.dart';
import 'package:poke_app_kostanai/domain/entity/pokemon_description.dart';

part 'poke_event.dart';
part 'poke_state.dart';

class PokeBloc extends Bloc<PokeEvent, PokeState> {
  final repo = Repository();
  PokeBloc() : super(const PokeInitial()) {
    on<FetchData>((event, emit) async {
      emit(const Loading(true));
      try {
        final description = event.isRandom
            ? await repo.getPokemonInfoRandom()
            : await repo.getPokemonInfoByName(event.name);
        emit(const Loading(false));
        emit(Loaded(pokemonDescription: description));
      } on ApiClientExeption catch (e) {
        switch (e.type) {
          case ApiClientExeptionType.Network:
            emit(const Loading(false));
            emit(const ErrorState(
                errorMessage:
                    'Сервер не доступен. Проверьте подключение к интернету'));
            break;
          case ApiClientExeptionType.Request:
            emit(const Loading(false));
            emit(const ErrorState(errorMessage: 'Неправильное имя покемона'));
            break;
          case ApiClientExeptionType.Other:
            emit(const Loading(false));
            emit(const ErrorState(
                errorMessage: 'Произошла ошибка. Попробуйте еще раз'));
            break;
        }
      }
    });
  }
}
