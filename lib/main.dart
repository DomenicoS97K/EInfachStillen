import 'package:einfach_stillen/constants.dart';
import 'package:einfach_stillen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Lora',
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.color4,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: AppColors.color1,
        primaryColor: AppColors.color4,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.color4,
          foregroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora'),
        ),
      ),
      home: const Scaffold(body: HomePage()),
    );
  }
}
