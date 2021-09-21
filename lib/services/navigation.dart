import 'package:flutter/material.dart';

class NavigationService {
  NavigationService._privateConstructor();

  static final NavigationService _instance =
      NavigationService._privateConstructor();

  static NavigationService get instance {
    return _instance;
  }

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Future<dynamic> navigateTo(String routeName) {
  //   return navigatorKey.currentState!.pushNamed(routeName);
  // }

  Future<dynamic> push(Widget widget) async {
    return navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (ctx) => widget,
      ),
    );
  }
}
