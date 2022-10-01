import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../data/data.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text(
              "facebook",
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light),
            backgroundColor: Colors.white,
            actions: [
              CircleButton(icon: Icons.search, onPressed: () {}),
              CircleButton(icon: MdiIcons.facebookMessenger, onPressed: () {}),
            ],
          ),
          const SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const ListTile(
                title: Center(
                  child: Text(''), //Text
                ), //Center
              ), //ListTile
              childCount: 15,
            ), //SliverChildBuildDelegate
          )
        ],
      ),
    );
  }
}
