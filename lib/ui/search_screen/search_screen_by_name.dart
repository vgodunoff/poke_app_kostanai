import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_app_kostanai/domain/blocs/pokemon/bloc/poke_bloc.dart';

class SearchScreenByName extends StatelessWidget {
  const SearchScreenByName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Поиск покемона по имени'),
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
            _SearchWidget()
          ],
        ),
      ),
    );
  }
}

class _SearchWidget extends StatelessWidget {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        label: const Text('ditto'),
        filled: true,
        fillColor: Colors.white.withAlpha(235),
        border: const OutlineInputBorder(),
        prefixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<PokeBloc>(context)
                .add(FetchData(isRandom: false, name: _textController.text));
            FocusScope.of(context).unfocus();
          },
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
        ),
      ),
    );
  }
}
