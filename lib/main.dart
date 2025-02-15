import 'package:flutter/material.dart';
import 'package:learning/screens/Animal_page.dart';
import 'package:learning/screens/Color_page.dart';

import 'dart:ui';

import 'package:learning/screens/Family_page.dart';
import 'package:learning/screens/Home_page.dart';
import 'package:learning/screens/Number_page.dart';
import 'package:learning/screens/screen1.dart';

void main() {
  runApp(learning());
}

class learning extends StatelessWidget {
  const learning({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
