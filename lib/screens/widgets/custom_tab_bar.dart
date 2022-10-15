import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../config/palette.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedTab;
  final Function(int) onTap;
  final bool isBottomNavBar;
  const CustomTabBar(
      {Key? key,
      required this.selectedTab,
      required this.onTap,
      this.isBottomNavBar = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      // currentIndex: selectedTab,
      indicatorColor: Palette.facebookBlue,
      indicatorPadding: EdgeInsets.zero,
      indicator: isBottomNavBar
          ? const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3.0,
                ),
              ),
            )
          : const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3.0,
                ),
              ),
            ),
      // unselectedItemColor: Colors.black45,
      onTap: onTap,
      tabs: [
        Tooltip(
          message: "Home",
          textStyle: const TextStyle(color: Colors.black),
          preferBelow: true,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            Icons.home,
            size: 30.0,
            color: selectedTab == 0 ? Palette.facebookBlue : Colors.black45,
          ),
        ),
        Tooltip(
          message: "Watch",
          textStyle: const TextStyle(color: Colors.black),
          preferBelow: true,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            Icons.ondemand_video,
            size: 30.0,
            color: selectedTab == 1 ? Palette.facebookBlue : Colors.black45,
          ),
        ),
        Tooltip(
          message: "Marketplace",
          textStyle: const TextStyle(color: Colors.black),
          preferBelow: true,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            MdiIcons.storefront,
            size: 30.0,
            color: selectedTab == 2 ? Palette.facebookBlue : Colors.black45,
          ),
        ),
        Tooltip(
          message: "Groups",
          textStyle: const TextStyle(color: Colors.black),
          preferBelow: true,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            MdiIcons.accountMultiple,
            size: 30.0,
            color: selectedTab == 3 ? Palette.facebookBlue : Colors.black45,
          ),
        ),
        Tooltip(
          message: "Gaming",
          textStyle: const TextStyle(color: Colors.black),
          preferBelow: true,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            MdiIcons.facebookGaming,
            size: 30.0,
            color: selectedTab == 4 ? Palette.facebookBlue : Colors.black45,
          ),
        ),
      ],
    );
  }
}
