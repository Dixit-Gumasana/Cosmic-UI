import 'package:flutter/material.dart';

import 'homescreen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/splash.png'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 80.5, right: 80.5, top: 58, bottom: 678),
            child: Container(
              height: MediaQuery.of(context).size.height / 11.11,
              width: MediaQuery.of(context).size.width / 1.75,
              child: Image.asset('assets/Vector.png', fit: BoxFit.contain),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 270),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.51,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 308, right: 226),
            child: Text('Sign in',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffffffff))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 354, right: 48),
            child: TextField(
              style: TextStyle(
                color: Color(0xffffffff),
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  label: Text(
                    'Email id',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffa6a2a2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Color(0xffffffff)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.blueGrey)),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  suffixText: '@gmail.com',
                  suffixStyle: TextStyle(color: Color(0xffffffff))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 432, right: 48),
            child: TextField(
              style: TextStyle(
                color: Color(0xffffffff),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                label: Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffa6a2a2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Color(0xffffffff)),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.blueGrey)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 48, top: 505),
            child: Text(
              'Forget Password?',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff11dce8)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48,right: 48,top: 540),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) => home(),));
              },
              child: Container(
                height: MediaQuery.of(context).size.height/16.66,
                width: MediaQuery.of(context).size.width/1.33,
                child: Center(
                  child: Text('Sign in',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffffffff),
                    height: 1.0,
                  ),),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(colors: [
                    Color(0xff7f7fd5),
                    Color(0xff86a8e7),
                    Color(0xff91eae4),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48,right: 48,top: 605),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 1,
                  width: 82,
                  color: Colors.blueGrey,
                ),
                SizedBox(width: 5),
                Text('or sign in using',style:
                  TextStyle(
                    fontSize: 12,
                    color: Color(0xff8d8e99),
                  ),),
                SizedBox(width: 5),
                Container(
                  height: 1,
                  width: 82,
                  color: Colors.blueGrey,
                ),],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90,top: 640,right: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.facebook_outlined,color: Colors.white70,size: 44,),
                SizedBox(width: 20),
                Icon(Icons.snapchat,color: Colors.white70,size: 45,),
                SizedBox(width: 20),
                Icon(Icons.email_outlined,color: Colors.white70,size: 45,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 95,top: 705),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Don’t have an account?',style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff8d8e99),
                )),
                Text('  Sign up',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffffffff),
                )),



              ],
            ),
          ),

        ],
      ),
    );
  }
}
