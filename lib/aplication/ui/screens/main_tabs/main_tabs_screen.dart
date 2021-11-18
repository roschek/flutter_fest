import 'package:flutter/material.dart';
import 'package:flutter_fest/aplication/resources/resources.dart';
import 'package:flutter_fest/aplication/ui/screens/main_tabs/main_tabs_view_model.dart';
import 'package:flutter_fest/aplication/ui/screens/widgets/shedule_widget.dart';
import 'package:provider/src/provider.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: _BodyWidget(), bottomNavigationBar: _BottomNavBarWidget());
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        context.select((MainTabsViewModel vm) => vm.currentTabIndex);
    return IndexedStack(
      index: currentIndex,
      children: const [
        SheduleWidget(),
        Center(child: Text('2', style: TextStyle(color: Colors.white))),
        Center(child: Text('3', style: TextStyle(color: Colors.white))),
      ],
    );
  }
}

class _BottomNavBarWidget extends StatelessWidget {
  const _BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        context.select((MainTabsViewModel vm) => vm.currentTabIndex);
    final model = context.read<MainTabsViewModel>();
    final theme = Theme.of(context).bottomNavigationBarTheme;
    final buttons = [
      _BottomBarItemFactory(AppImages.tabBarCalendar, 'Расписание'),
      _BottomBarItemFactory(AppImages.tabBarBookmark, 'Избранное'),
      _BottomBarItemFactory(AppImages.tabBarPoint, 'Как добраться'),
    ]
        .asMap()
        .map((index, value) {
          return MapEntry(index, value.build(index, currentIndex, theme));
        })
        .values
        .toList();
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: model.setCurrentTabIndex,
      items: buttons,
    );
  }
}

class _BottomBarItemFactory {
  final String iconName;
  final String tooltip;

  _BottomBarItemFactory(this.iconName, this.tooltip);

  BottomNavigationBarItem build(
      int index, int currentIndex, BottomNavigationBarThemeData theme) {
    final color = index == currentIndex
        ? theme.selectedItemColor
        : theme.unselectedItemColor;
    return BottomNavigationBarItem(
        label: '',
        icon: Image.asset(
          iconName,
          color: color,
        ),
        tooltip: tooltip);
  }
}
