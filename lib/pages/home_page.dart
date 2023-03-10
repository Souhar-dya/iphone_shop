import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text("Catalog App"),
        )),
        body: const Center(
          child: Text("Welcome to 30 days of flutter."),
        ));
  }
}