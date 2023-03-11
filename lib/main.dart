import 'package:flutter/material.dart';
import 'package:udemy_clone/navigation/bottom_nav.dart';
import 'package:udemy_clone/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: const MainPage(),
    );
  }
}
