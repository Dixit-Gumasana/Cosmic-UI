import 'package:cosmic/profile.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class favs extends StatefulWidget {
  const favs({super.key});

  @override
  State<favs> createState() => _favsState();
}

class _favsState extends State<favs> {
  List images = [
    'assets/mercury.png',
    'assets/venus_fav.png',
    'assets/earth_fav.png',
    'assets/mars.png'
  ];

  List names = ['Mercury', 'Venus', 'Earth', 'Mars'];

  List details = [
    'Mercury is the smallest planet in the Solar System and the closest to the Sun.',
    'Venus is the second planet from the Sun and is Earths closest planetary neighbor.',
    'Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System.',
    'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System',
  ];

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
                  Icon(
                    Icons.reorder_outlined,
                    size: 30,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  Spacer(),
                  Text('Favourites',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w600)),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push
                        (context, MaterialPageRoute
                        (builder: (context) => profile(),));
                    },
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 30,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 140),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              itemCount: 4,
              itemExtent: 165,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 5.90,
                      width: MediaQuery.of(context).size.width / 1.15,
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black87)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 7),
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('${images[index]}'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 98, top: 21),
                            child: Text(
                              '${names[index]}',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff11dce8)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 21, left: 265, right: 25),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 22,
                              color: Colors.white70,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 98, top: 45, right: 30),
                            child: Text(
                              '${details[index]}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white60,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 220, top: 100, right: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Details',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white70,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 18,
                                  color: Color(0xff11dce8),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 730),
            child: Container(
              height: MediaQuery.of(context).size.height / 11.11,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black54,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => home(),
                            ));
                      },
                      child: Icon(
                        Icons.language_outlined,
                        size: 25,
                        color: Colors.white30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180, top: 15),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 25,
                      color: Colors.white70,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 275, top: 15, right: 70),
                    child: Icon(
                      Icons.more_horiz_outlined,
                      size: 25,
                      color: Colors.white30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 66.5, top: 43),
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 166, top: 43),
                    child: Text(
                      'Favourites',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 275, top: 43),
                    child: Text(
                      'More',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
