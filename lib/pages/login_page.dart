import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.deepPurple,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
