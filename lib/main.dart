import 'package:flutter/material.dart';
import 'package:realestateui/screens/welcome.dart';
import 'package:realestateui/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate App UI',
      theme: EstateTheme.theme,
      home: const GetStarted(),
    );
  }
}
