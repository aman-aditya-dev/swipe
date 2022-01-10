import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // _navigateToHome();
  }

  // call all the API's then navigate to homepage

  // Future _navigateToHome() async {
  //   await Future.delayed(Duration(milliseconds: 3000), () {});
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => Home()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text('Welcome to Swipe News')),
        ],
      ),
    );
  }
}
