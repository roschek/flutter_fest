import 'package:flutter/material.dart';
import 'package:flutter_fest/aplication/ui/navigation/main_navigation.dart';
import 'package:flutter_fest/aplication/ui/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = MainNavigation();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}