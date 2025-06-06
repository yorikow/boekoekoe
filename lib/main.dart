import 'package:flutter/material.dart';
import 'package:myperpustakaan/components/colors.dart';
import 'package:myperpustakaan/pages/splash_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: true,
      title: "Boekoe",
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Clr.dark),
    );
  }
}
