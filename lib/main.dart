import 'package:flutter/material.dart';
import 'package:iphone_shop/pages/login_page.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* home: const HomePage() */
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
