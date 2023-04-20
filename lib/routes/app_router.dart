import 'package:flutter/material.dart';


class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static goToAndRemove({required String screenName}) {
    navigatorKey.currentState!.pushNamedAndRemoveUntil(screenName, (Route<dynamic> route) => false);
  }

  static goTo({required String screenName}) {
    navigatorKey.currentState!.pushNamed(screenName);
  }

  static back() {
    navigatorKey.currentState!.pop();
  }

  static mayBack() {
    navigatorKey.currentState!.maybePop();
  }
}
