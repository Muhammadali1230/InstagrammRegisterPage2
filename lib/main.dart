import 'package:flutter/material.dart';
import 'package:instagram_register1/home_page.dart';
import 'package:instagram_register1/switch_acc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchAcc(),
    );
  }
}
