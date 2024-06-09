import 'package:flutter/material.dart';
import 'package:generators/features/movie/presentation/pages/movie_comparison_page.dart';
import 'package:generators/features/movie/presentation/pages/movies_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MoviesListPage(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Comparação de filmes'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MovieComparisonPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
