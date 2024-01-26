import 'package:air_quality_app/config/app_route.dart';
import 'package:air_quality_app/presentation/main/main_page.dart';
import 'package:air_quality_app/presentation/station_details/station_details_page.dart';
import 'package:flutter/material.dart';

Route<dynamic>? generateRoute(RouteSettings route) {
  switch (route.name) {
    case AppRoute.main:
      return _createRoute(route: route, page: const MainPage());
    case AppRoute.cityDetails:
      final args = route.arguments! as StationDetailsPageArgs;
      return _createRoute(route: route, page: StationDetailsPage(args.cityId));
    default:
      return _createRoute(
        route: route,
        page: const MainPage(),
      );
  }
}

PageRoute<T> _createRoute<T extends Object>({
  required RouteSettings route,
  required Widget page,
}) {
  return PageRouteBuilder<T>(
    pageBuilder: (context, animation, secondAnimation) => page,
    settings: route,
    transitionsBuilder: (context, animation, secondAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
