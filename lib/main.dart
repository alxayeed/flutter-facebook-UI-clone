import 'package:facebook_clone/screens/screens.dart';
import 'package:flutter/material.dart';

import 'config/palette.dart';

void main() {
  runApp(FacebookUI());
}

class FacebookUI extends StatelessWidget {
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
        home: HomeScreen());
  }
}
