import 'package:flutter/material.dart';
import 'package:webapplication/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  onloginPressed(
      TextEditingController newpass, TextEditingController confpass) {
    print("Email: ${newpass.text}");
    print("Email: ${confpass.text}");
    newpass.text = "";
    confpass.text = "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController newpassword = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();

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
                      "Reset Password",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "New Password *",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: newpassword,
                        decoration: InputDecoration(
                          hintText: "New Password ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Confirm Password *",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: confirmpassword,
                        decoration: InputDecoration(
                          hintText: "Confirm Passwords ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            onloginPressed(newpassword, confirmpassword);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text("Reset Password"),
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(
                                side: BorderSide(style: BorderStyle.solid)),
                            backgroundColor: Colors.black,
                          )),
                    )
                  ],
                ),
              ),
            ))));
  }
}
