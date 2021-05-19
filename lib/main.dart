import 'package:flutter/material.dart';

import 'DrawerScreen.dart';
import 'homeScreen.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen()
        ],
      ),
    );
  }
}

