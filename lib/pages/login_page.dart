import 'package:flutter/material.dart';
import '../utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 55.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter password", labelText: "Password"),
                ),
                Row(
                  children: [
                    TextButton(
                      style: const ButtonStyle(alignment: Alignment.centerLeft),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.HomePage);
                      },
                      child: const Text("Forgot Password?"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.HomePage);
                      },
                      style: const ButtonStyle(
                          minimumSize:
                              MaterialStatePropertyAll(Size(120.0, 50.0)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.deepPurple),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      child: const Text("Login"),
                    ),
                    const SizedBox(
                      width: 42.0,
                    ),
                    const OutlinedButton(
                        onPressed: null,
                        child: Text("Sign up"),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(120.0, 50.0)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.indigo),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white))),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
