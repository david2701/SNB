import 'package:flutter/material.dart';
import 'package:logindemo/pages/choice_page.dart';
import 'package:logindemo/pages/homepage.dart';
import 'package:logindemo/pages/loginscreen.dart';
import 'package:logindemo/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
          'login': (context) => LoginScreen(),
          'choice': (context) => ChoicePage(),
          'home': (context) => HomeScreen(),
        },
    );
  }
}