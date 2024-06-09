import 'package:flutter/material.dart';
import 'package:generators/features/movie/presentation/pages/movie_comparison_page.dart';
import 'package:generators/features/movie/presentation/pages/movies_list_page.dart';
import 'package:generators/my_home_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/movies': (context) => const MoviesListPage(),
        '/movie-comparison': (context) => MovieComparisonPage(
              title: ModalRoute.of(context)!.settings.arguments as String,
            ),
      },
    );
  }
}
