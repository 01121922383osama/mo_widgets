import 'package:flutter/material.dart';
import 'package:mo_widgets/Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black38,
        ),
      ),
      home: const HomePage(),
    );
  }
}
