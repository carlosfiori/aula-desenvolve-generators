import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:generators/features/movie/presentation/pages/movie_comparison_page.dart';
import 'package:generators/features/movie/presentation/pages/movies_list_page.dart';
import 'package:generators/my_home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MyHomeRoute.page, initial: true, children: [
          AutoRoute(
            page: PaginaDeFilmes.page,
          ),
          AutoRoute(
            page: MovieComparisonRoute.page,
          ),
        ]),
      ];
}
