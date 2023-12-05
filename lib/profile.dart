import 'package:flutter/material.dart';

import 'homescreen.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/splash.png',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height / 6.25,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.black54.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.black87,
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push
                        (context, MaterialPageRoute
                        (builder: (context) => home(),));
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      size: 25,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                  Spacer(),
                  Text('My Profile',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 152),
            child: Container(
              height: MediaQuery.of(context).size.height/7.14,
              width: MediaQuery.of(context).size.width/1.14,
              decoration: BoxDecoration(
                color: Colors.black54.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.black87)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17,top: 22),
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage
                          (image: AssetImage('assets/profile.png'),
                        fit: BoxFit.cover),
                        border: Border.all(
                          color: Colors.white70
                        )
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 94,top: 33),
                    child: Text('Kalpna Chawla',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.9)
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 94,top: 63),
                    child: Text('Space adventurer',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.6)
                      ),),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 270,top: 21,right: 21),
                    child: Icon(Icons.edit,
                    size: 22,
                    color: Colors.white.withOpacity(0.9),),
                  ),


                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 288),
            child: Container(
              height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width/1.15,
              decoration: BoxDecoration(
                color: Colors.black54.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: Colors.black),),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24,top: 24),
                    child: Container(
                      height: 435,
                      width: 260,
                      child: Image.asset('assets/profile_progress.png',
                      fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
