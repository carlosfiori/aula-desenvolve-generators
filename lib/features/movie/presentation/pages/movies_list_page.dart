import 'package:flutter/material.dart';
import 'package:generators/features/movie/data/models/movie.dart';
import 'package:generators/features/movie/data/providers/movie_provider.dart';

class MoviesListPage extends StatefulWidget {
  const MoviesListPage({super.key});

  @override
  State<MoviesListPage> createState() => _MoviesListPageState();
}

class _MoviesListPageState extends State<MoviesListPage> {
  late final Future<List<Movie>> _future;

  @override
  void initState() {
    super.initState();
    _future = MovieProvider().getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filmes'),
      ),
      body: FutureBuilder(
        future: _future,
        initialData: const [],
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Erro ao carregar os filmes'));
          }

          final movies = snapshot.data as List<Movie>;

          return ListView.separated(
            itemCount: movies.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final movie = movies[index];
              return ListTile(
                title: Text(movie.title),
                subtitle: Text(movie.description),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(movie.title),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Diretor: ${movie.director}'),
                            Text('Produtor: ${movie.producer}'),
                            Text('Data de lançamento: ${movie.releaseDate}'),
                            Text('Tempo de execução: ${movie.runningTime}'),
                            Text('Pontuação RT: ${movie.rtScore}'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Fechar'),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
