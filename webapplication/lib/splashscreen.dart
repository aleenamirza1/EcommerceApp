import 'package:flutter/material.dart';
import 'package:webapplication/logsign.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 12), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogSign()));
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://cdn.dribbble.com/users/2046015/screenshots/5973727/06-loader_telega.gif',
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
