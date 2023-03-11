import 'package:flutter/material.dart';
import 'package:iphone_shop/pages/login_page.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils./routes.dart';
import './widgets/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* home: const HomePage() */
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.HomePage,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.HomePage: (context) => const HomePage(),
        MyRoutes.LoginPage: (context) => LoginPage()
      },
    );
  }
}
