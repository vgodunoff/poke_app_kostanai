import 'package:flutter/material.dart';
import 'package:poke_app_kostanai/ui/search_screen/search_screen_by_name.dart';
import 'package:poke_app_kostanai/ui/search_screen/search_screen_random.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Меню'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SearchScreenByName();
                  }));
                },
                child: const Text('Перейти на страницу поиска')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SearchScreenRandom();
                  }));
                },
                child: const Text('Поискать случайного покемона!')),
          ],
        ),
      ),
    );
  }
}
