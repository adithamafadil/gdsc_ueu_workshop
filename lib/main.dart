import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/screen/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC UEU Workshop',
      home: Homescreen(),
    );
  }
}
