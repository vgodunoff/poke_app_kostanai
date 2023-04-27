import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_app_kostanai/domain/blocs/pokemon/bloc/poke_bloc.dart';

class SearchScreenRandom extends StatelessWidget {
  const SearchScreenRandom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Поиск покемона случайным выбором'),
      ),
      body: BlocProvider(
        create: (context) => PokeBloc(),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: BlocConsumer<PokeBloc, PokeState>(
                listener: (context, state) {
                  if (state is Loading) {
                    if (state.isLoading) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const Center(
                                child: CircularProgressIndicator());
                          });
                    } else {
                      Navigator.pop(context);
                    }
                  }
                  if (state is ErrorState) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Ошибка'),
                            content: Text(state.errorMessage),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('OK'))
                            ],
                          );
                        });
                  }
                },
                buildWhen: (previous, current) => current is Loaded,
                builder: (context, state) {
                  if (state is Loaded) {
                    final imgUrl = state.pokemonDescription.imgUrl;
                    final pokemonDescription =
                        state.pokemonDescription.description;
                    return ListView(
                      children: [
                        Image.network(imgUrl),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Colors.white,
                          child: Text(pokemonDescription),
                        ),
                      ],
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            ),
            _ButtonWidget()
          ],
        ),
      ),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<PokeBloc>(context).add(const FetchData(isRandom: true));
        FocusScope.of(context).unfocus();
      },
      child: const Text('Показать любого покемона!'),
    );
  }
}
