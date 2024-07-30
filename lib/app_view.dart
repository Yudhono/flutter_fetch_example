import 'package:flutter/material.dart';
import 'package:flutter_fetch_example/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fetch Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
        surface: Colors.white,
        onSurface: Colors.black,
        primary: Colors.black45,
        onPrimary: Colors.white,
      )),
      home: const MyHomeScreen(),
    );
  }
}
