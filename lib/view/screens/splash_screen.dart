import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // L O G O
          Positioned(
            top: mq.height * .35,
            left: mq.width * .5 - (mq.height * 0.1),
            child: Image.asset(
              "assets/logo.png",
              height: mq.height * .2,
              width: mq.height * .2,
            ),
          ),

          // T E X T
          Positioned(
            bottom: mq.height * .08,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Made with ❤️ in India",
                style: TextStyle(color: CupertinoColors.black, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
