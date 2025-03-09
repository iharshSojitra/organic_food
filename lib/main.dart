import 'package:flutter/material.dart';
import 'package:organic_food/screen_1.dart';
import 'package:organic_food/screen_2.dart';
import 'package:organic_food/screen_3.dart';

import 'demo.dart';
import 'demo_like.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: demo_like(),
    );
  }
}
