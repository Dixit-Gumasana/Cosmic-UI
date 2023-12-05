import 'dart:async';

import 'package:flutter/material.dart';

import 'loginscreen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder:
          (context) => login() ,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/splash.png',fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40,left: 40,top: 258,bottom: 258),
            child: Container(
              height: MediaQuery.of(context).size.height/2.78,
              width: MediaQuery.of(context).size.width/1.26,
              decoration: BoxDecoration(
                image: DecorationImage(image:
                AssetImage('assets/loader.png'),
                fit: BoxFit.cover)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 132,left: 132,top: 708,bottom: 72),
            child: Container(
              height: MediaQuery.of(context).size.height/25,
              width: MediaQuery.of(context).size.width/3.33,
              decoration: BoxDecoration(
                  image: DecorationImage(image:
                  AssetImage('assets/flutter_logo.png'),
                      fit: BoxFit.cover)
              ),
            ),
          ),


        ],

      ),
    );
  }
}
