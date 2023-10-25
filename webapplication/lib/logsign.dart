import 'package:flutter/material.dart';
import 'package:webapplication/login.dart';
import 'package:webapplication/signup.dart';

class LogSign extends StatelessWidget {
  const LogSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 580,
                    ),
                    Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginPage()));
                            },
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(
                                  side: BorderSide(style: BorderStyle.solid)),
                              backgroundColor: Colors.black,
                            ))),
                    Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignupPage()));
                            },
                            child: Text("Sign Up"),
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(
                                  side: BorderSide(style: BorderStyle.solid)),
                              backgroundColor: Colors.black,
                            )))
                  ],
                ),
              ),
            ))));
  }
}
