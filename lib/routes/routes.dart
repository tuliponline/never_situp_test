import 'package:flutter/material.dart';
import 'package:never_situp_test/screens/home_screen.dart';

class Routes {
  static const String initialRoute = "/home";
  static const String permutations = "/permutations";
  static Map<String, WidgetBuilder> mapRouter = {
    initialRoute: (BuildContext context) => const HomeScreen(),
  };
}
