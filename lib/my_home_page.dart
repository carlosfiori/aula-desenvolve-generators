import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Geradores'),
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text('Lista de filmes'),
                onTap: () {
                  Navigator.of(context).pushNamed('/movies');
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const MoviesListPage(),
                  //   ),
                  // );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Comparação de filmes'),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/movie-comparison',
                    arguments: "Comparar filmes",
                  );

                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const MovieComparisonPage(
                  //       title: "Comparar filmes",
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ));
  }
}
