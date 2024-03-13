import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonChange = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
                width: 720.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Username",
                        hintText: "Enter your Username",
                      ),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.password),
                        labelText: "Password",
                        hintText: "Enter your Password",
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          buttonChange = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, "/home");
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: buttonChange ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: buttonChange
                              ? BorderRadius.circular(50)
                              : BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: buttonChange
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   // ignore: sort_child_properties_last
                    //   child: const Text(
                    //     "Login",
                    //   ),
                    //   style: const ButtonStyle(
                    //     minimumSize: MaterialStatePropertyAll(
                    //       Size(150, 45),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
