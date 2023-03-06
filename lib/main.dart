import 'package:flutter/material.dart';
import 'package:flutter_app/auth.dart';
import 'package:flutter_app/calendar.dart';
import 'package:flutter_app/desktop.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/cards.dart';
import 'package:flutter_app/todo.dart';

void main() {
  runApp(const MyThemeApp());
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const AuthPage(),
        '/home': (context) => const HomePage(),
        '/todo': (context) => const ToDoPage(),
        '/calendar': (context) => const CalendarPage(),
        '/cards': (context) => const CardsPage(),
        '/desktop': (context) => const DesktopPage(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber[100],
        primarySwatch: Colors.amber,
      ),
    );
  }
}
