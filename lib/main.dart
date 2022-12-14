import 'package:facebook_clone/screens/screens.dart';
import 'package:flutter/material.dart';

import 'config/palette.dart';

void main() {
  runApp(const FacebookUI());
}

class FacebookUI extends StatelessWidget {
  const FacebookUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Palette.scaffold,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SafeArea(
        child: NavBarScreen(),
      ),
    );
  }
}
