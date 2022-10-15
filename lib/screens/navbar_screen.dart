import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  final List<Widget> _screens = const [
    HomeScreen(),
    Scaffold(),
    HomeScreen(),
    Scaffold(),
    HomeScreen(),
  ];

  int _selectedTab = 0;

  void _onTabBarTapped(index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _screens.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                preferredSize: Size(screenSize.width, 100.0),
                child: CustomAppBar(
                    screens: _screens,
                    currentUser: currentUser,
                    selectedTab: _selectedTab,
                    onTap: _onTabBarTapped),
              )
            : null,
        body: IndexedStack(
          index: _selectedTab,
          children: _screens,
        ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? SizedBox(
                height: 45.0,
                child: CustomTabBar(
                    selectedTab: _selectedTab, onTap: _onTabBarTapped),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
