import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:generators/routes/app_router.dart';

@RoutePage()
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const PaginaDeFilmes(),
        MovieComparisonRoute(
            title: "Movie Comparison",
            subtitle: "Select two movies to compare"),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Filmes', icon: Icon(Icons.movie)),
            BottomNavigationBarItem(
                label: 'Comparação', icon: Icon(Icons.compare)),
          ],
        );
      },
    );
  }
}
