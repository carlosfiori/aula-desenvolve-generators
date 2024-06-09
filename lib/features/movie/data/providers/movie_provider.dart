import 'package:dio/dio.dart';
import 'package:generators/features/movie/data/models/movie.dart';

class MovieProvider {
  Future<List<Movie>> getMovies() async {
    try {
      const baseUrl = 'https://ghibliapi.vercel.app/films';
      final response = await Dio().get(baseUrl);
      if (response.statusCode == 200) {
        final data = response.data as List;
        return data.map((e) => Movie.fromJson(e)).toList();
      }
    } catch (e) {
      return [];
    }

    return [];
  }
}
