import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:generators/features/movie/data/models/movie.dart';
import 'package:generators/features/movie/data/providers/movie_provider.dart';

@RoutePage(name: "MovieComparisonRoute")
class ComparacaoPage extends StatefulWidget {
  const ComparacaoPage({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  State<ComparacaoPage> createState() => _ComparacaoPageState();
}

class _ComparacaoPageState extends State<ComparacaoPage> {
  late final Future<List<Movie>> _future;
  Movie? _selectedMovie1;
  Movie? _selectedMovie2;

  @override
  void initState() {
    super.initState();
    _future = MovieProvider().getMovies().then((data) {
      return data.sublist(0, 3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Erro ao carregar os filmes'));
          }

          final movies = snapshot.data as List<Movie>;

          return Column(
            children: [
              Text(widget.subtitle),
              SizedBox(
                height: 200,
                child: Row(
                  children: movies
                      .map(
                        (movie) => Expanded(
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedMovie1 = movie.copyWith();
                                });
                              },
                              child: _MovieCard(
                                  movie: movie,
                                  isSelected: _selectedMovie1?.id == movie.id)),
                        ),
                      )
                      .toList(),
                ),
              ),
              const Divider(),
              SizedBox(
                height: 200,
                child: Row(
                  children: movies
                      .map(
                        (movie) => Expanded(
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedMovie2 = movie.copyWith();
                                });
                              },
                              child: _MovieCard(
                                  movie: movie,
                                  isSelected: _selectedMovie2?.id == movie.id)),
                        ),
                      )
                      .toList(),
                ),
              ),
              const Divider(),
              const Text('Resultado da comparação:'),
              if (_selectedMovie1 == null || _selectedMovie2 == null)
                const Text('Selecione um filme de cada lista para comparar'),
              if (_selectedMovie1 != null && _selectedMovie2 != null)
                Text(
                  _selectedMovie1 == _selectedMovie2
                      ? 'Os filmes são iguais'
                      : 'Os filmes são diferentes',
                )
            ],
          );
        },
      ),
    );
  }
}

class _MovieCard extends StatelessWidget {
  const _MovieCard({
    required this.movie,
    required this.isSelected,
  });

  final bool isSelected;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: isSelected ? Colors.blueGrey : Colors.grey,
        child: Center(
          child: Text(
            movie.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
