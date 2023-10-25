import 'package:flutter/material.dart';
import 'package:webapplication/forgetpass.dart';
import 'package:webapplication/loginsuccess.dart';
import 'package:webapplication/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  onloginPressed(
      TextEditingController email2, TextEditingController password2) {
    print("Email: ${email2.text}");
    print("Password: ${password2.text}");
    email2.text = "";
    password2.text = "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1604147706283-d7119b5b822c?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      "Welcome!",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Please login or sign up to continue our app",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Username",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: "Username ",
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password ",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ForgotPassword(),
                            ),
                          );
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              onloginPressed(email, password);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginSuccessfull()),
                              );
                            },
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(
                                  side: BorderSide(style: BorderStyle.solid)),
                              backgroundColor: Colors.black,
                            ))),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SignupPage()));
                        },
                        child: const Text(
                          "Don't have a account? Signup",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "or",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          onloginPressed(email, password);
                        },
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Continue with Facebook",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(
                            side: BorderSide(style: BorderStyle.solid),
                          ),
                          backgroundColor: Color.fromARGB(255, 24, 43, 126),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 24, 43, 126)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.g_mobiledata_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Continue with Google",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(
                            side: BorderSide(style: BorderStyle.solid),
                          ),
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.apple,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Continue with Apple",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(
                            side: BorderSide(style: BorderStyle.solid),
                          ),
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))));
  }
}
