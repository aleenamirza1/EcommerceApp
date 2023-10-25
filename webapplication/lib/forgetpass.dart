import 'package:flutter/material.dart';
import 'package:webapplication/login.dart';
import 'package:webapplication/resetpass.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  onloginPressed(TextEditingController emaill) {
    print("Email: ${emaill.text}");
    emaill.text = "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailll = TextEditingController();

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
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: emailll,
                        decoration: InputDecoration(
                          hintText: "Email ",
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              onloginPressed(emailll);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ResetPassword()),
                              );
                            },
                            child: Text("Get New Password"),
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(
                                  side: BorderSide(style: BorderStyle.solid)),
                              backgroundColor: Colors.black,
                            ))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const LoginPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "Return to login Page",
                            style:
                                TextStyle(fontSize: 14, color: Colors.blueGrey),
                          ),
                        ))
                  ],
                ),
              ),
            ))));
  }
}
