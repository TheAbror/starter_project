import 'package:flutter/material.dart';

class MainRouteGenerator {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case AppRoutes.materials:
      //   return CustomCupertinoStyleNavigationRoute(
      //     builder: (_) => ModuleMaterialsPage(
      //       module: settings.arguments as DashboardModuleResponse,
      //     ),
      //   );

      // default:
      //   return CustomCupertinoStyleNavigationRoute(
      //     builder: (_) => const SplashPage(),
      //   );
      default:
        return null;
    }
  }
}
