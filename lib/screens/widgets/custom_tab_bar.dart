import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../config/palette.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedTab;
  final Function(int) onTap;
  const CustomTabBar({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedTab,
      selectedItemColor: Palette.facebookBlue,
      unselectedItemColor: Colors.black45,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountCancelOutline), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(MdiIcons.bellOutline), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Home"),
      ],
    );
  }
}
