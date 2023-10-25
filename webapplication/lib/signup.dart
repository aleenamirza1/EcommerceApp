import 'package:flutter/material.dart';
import 'package:webapplication/login.dart';
import 'package:webapplication/loginsuccess.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  onSignPressed(
      TextEditingController firstname2,
      TextEditingController lastname2,
      TextEditingController email3,
      TextEditingController password3) {
    print("firstname: ${firstname2.text}");
    print("lastname: ${lastname2.text}");
    print("Email: ${email3.text}");
    print("Password: ${password3.text}");
    firstname2.text = "";
    lastname2.text = "";
    email3.text = "";
    password3.text = "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController lastname = TextEditingController();
    TextEditingController email4 = TextEditingController();
    TextEditingController password4 = TextEditingController();
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
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Create an new account",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "First Name",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: firstname,
                        decoration: InputDecoration(
                          hintText: "First Name ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Last Name",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: lastname,
                        decoration: InputDecoration(
                          hintText: "Last Name ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: email4,
                        decoration: InputDecoration(
                          hintText: "Email ",
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
                        controller: password4,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginPage()));
                        },
                        child: const Text(
                          "Already a member? Login",
                          style:
                              TextStyle(fontSize: 14, color: Colors.blueGrey),
                        )),
                    Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              onSignPressed(
                                  firstname, lastname, email4, password4);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginSuccessfull()));
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
