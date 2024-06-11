// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MovieComparisonRoute.name: (routeData) {
      final args = routeData.argsAs<MovieComparisonRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ComparacaoPage(
          key: args.key,
          title: args.title,
          subtitle: args.subtitle,
        ),
      );
    },
    MyHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyHomePage(),
      );
    },
    PaginaDeFilmes.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QualquerCoisa(),
      );
    },
  };
}

/// generated route for
/// [ComparacaoPage]
class MovieComparisonRoute extends PageRouteInfo<MovieComparisonRouteArgs> {
  MovieComparisonRoute({
    Key? key,
    required String title,
    required String subtitle,
    List<PageRouteInfo>? children,
  }) : super(
          MovieComparisonRoute.name,
          args: MovieComparisonRouteArgs(
            key: key,
            title: title,
            subtitle: subtitle,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieComparisonRoute';

  static const PageInfo<MovieComparisonRouteArgs> page =
      PageInfo<MovieComparisonRouteArgs>(name);
}

class MovieComparisonRouteArgs {
  const MovieComparisonRouteArgs({
    this.key,
    required this.title,
    required this.subtitle,
  });

  final Key? key;

  final String title;

  final String subtitle;

  @override
  String toString() {
    return 'MovieComparisonRouteArgs{key: $key, title: $title, subtitle: $subtitle}';
  }
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QualquerCoisa]
class PaginaDeFilmes extends PageRouteInfo<void> {
  const PaginaDeFilmes({List<PageRouteInfo>? children})
      : super(
          PaginaDeFilmes.name,
          initialChildren: children,
        );

  static const String name = 'PaginaDeFilmes';

  static const PageInfo<void> page = PageInfo<void>(name);
}
