import 'package:flutter/material.dart';
import 'package:rehlattask/apis/my_api.dart';
import 'package:rehlattask/helper/my_data.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomeScreen(),
    );
  }
}
