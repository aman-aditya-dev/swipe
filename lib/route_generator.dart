import 'package:fluro/fluro.dart' as fluro;
import 'package:flutter/material.dart';
import 'constants/routes.dart';
import 'screens/categories/categories_screen.dart';
import 'screens/news/news.dart';

class FluroRouter {
  static fluro.FluroRouter router = fluro.FluroRouter();

  static fluro.Handler getCommonHandler(String route) {
    switch (route) {
      case Routes.news:
        return fluro.Handler(
            handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return News();
        });
      case Routes.categories:
        return fluro.Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
            return Categories();
          },
        );
      case Routes.quiz:
        return fluro.Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
            return Categories();
          },
        );
      default:
        return fluro.Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
            return News();
          },
        );
    }
  }

  static void defineRoutes() {
    router.define(
      Routes.categories,
      handler: getCommonHandler(Routes.categories),
      transitionType: fluro.TransitionType.fadeIn,
    );
  }
}
