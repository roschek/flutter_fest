import 'package:flutter/material.dart';
import 'package:flutter_fest/aplication/ui/screens/main_tabs/main_tabs_screen.dart';
import 'package:flutter_fest/aplication/ui/screens/main_tabs/main_tabs_view_model.dart';
import 'package:provider/provider.dart';

class ScreenFactory {
  Widget makeMainTabs () => ChangeNotifierProvider(
      create: (__) => MainTabsViewModel(),
      child: const MainTabsScreen());
}