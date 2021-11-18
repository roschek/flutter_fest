import 'package:flutter/cupertino.dart';

class MainTabsViewModel extends ChangeNotifier {
  var _currentTabIndex = 0;

  int get currentTabIndex => _currentTabIndex;

  void setCurrentTabIndex(value) {
    _currentTabIndex = value;
    notifyListeners();
  }
}