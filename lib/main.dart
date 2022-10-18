import 'package:flutter/material.dart';
import 'package:fluxstore/dashboard.dart';
import './splash_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        DashBoard.id: (context) => const DashBoard(),
      },
    );
  }
}