import 'package:flutter/material.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _name = "";
  var _changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 50.0,
          ),
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Welcome $_name",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 55.0),
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (value) {
                      setState(() {
                        _name = value;
                      });
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter password", labelText: "Password"),
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.HomePage);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        setState(() {
                          _changebutton = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));

                        // ignore: use_build_context_synchronously
                        Navigator.pushNamed(context, MyRoutes.HomePage);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        alignment: Alignment.center,
                        width: _changebutton ? 50 : 120,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        child: _changebutton
                            ? const Icon(Icons.done)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    )
                    /* ElevatedButton(
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
                    ) */
                    ,
                    const SizedBox(
                      height: 42,
                    ),
                    /* const OutlinedButton(
                        onPressed: null,
                        
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(120.0, 50.0)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.indigo),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        child: Text("Sign up"),
                      ) */
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
