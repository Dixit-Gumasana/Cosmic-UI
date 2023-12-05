import 'package:cosmic/profile.dart';
import 'package:flutter/material.dart';

import 'favourites.dart';
import 'innerpg.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
              colorBlendMode: BlendMode.darken ,
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 157, top: 55),
            child: Text('Milky way',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff8d8e99))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 67, right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.reorder_outlined,
                  size: 30,
                  color: Colors.white.withOpacity(0.8),
                ),
                Spacer(),
                Text('Solar System',
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
          Padding(
            padding: const EdgeInsets.only(top: 148),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 24),
                  Container(
                    height: MediaQuery.of(context).size.height / 16.66,
                    width: MediaQuery.of(context).size.width / 3.4,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black45,
                        )),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 15.5),
                          child: Text('Mercury',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1, top: 1),
                          child: Container(
                            height: 45,
                            width: 45,
                            child: Image.asset('assets/earth.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: MediaQuery.of(context).size.height / 16.66,
                    width: MediaQuery.of(context).size.width / 3.8,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black45,
                        )),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 15.5),
                          child: Text('Venus',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1, top: 1),
                          child: Container(
                            height: 45,
                            width: 45,
                            child: Image.asset('assets/venus.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>
                          innerpg(),));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 16.66,
                      width: MediaQuery.of(context).size.width / 3.8,
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black45,
                          )),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 15.5),
                            child: Text('Earth',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1, top: 1),
                            child: Container(
                              height: 45,
                              width: 45,
                              child: Image.asset('assets/earth.png',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: MediaQuery.of(context).size.height / 16.66,
                    width: MediaQuery.of(context).size.width / 3.6,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black45,
                        )),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 15.5),
                          child: Text('Jupitor',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1, top: 1),
                          child: Container(
                            height: 45,
                            width: 45,
                            child: Image.asset('assets/venus.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 220),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.7,
              width: MediaQuery.of(context).size.width / 1.15,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 12),
                    child: Text('Planet of the day',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/mars.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 90),
                    child: Text('Mars',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff11dce8))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 90, top: 80, right: 30),
                    child: Text(
                        'Mars is the fourth planet from the '
                        'Sun and the second-smallest planet '
                        'in the Solar System, only being '
                        'larger than Mercury. In the English '
                        'language, Mars is named for the '
                        'Roman god of war.',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white60)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 200, right: 30, top: 180, bottom: 19),
                    child: Text('Details',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white70)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 255, right: 10, top: 182, bottom: 20),
                    child: Icon(
                      Icons.arrow_forward_outlined,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 24, right: 24, top: 460, bottom: 98),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.22,
              width: MediaQuery.of(context).size.width / 1.14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.black54),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 12),
                    child: Text('Solar System',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 29, right: 29, top: 38),
                    child: Text(
                        'The Solar System[c] is the gravitationally bound'
                        ' system of the Sun and the objects that orbit it. It'
                        ' formed 4.6 billion years ago from the gravitational'
                        ' collapse of a giant interstellar molecular cloud.'
                        ' The vast majority (99.86%) of the systems mass '
                        'is sun, with most of the remaining mass '
                        'contained in the planet Jupiter. The four inner'
                        ' system planets—Mercury, Venus, Earth and Mars'
                        '—are terrestrial planets, being composed'
                        ' primarily of rock and metal. The four giant planets'
                        ' of the outer system are substantially larger and'
                        ' more massive than the terrestrials.',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white60)),
                  ),
                ],
              ),
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
                    child: Icon(
                      Icons.language_outlined,
                      size: 25,
                      color: Colors.white70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180, top: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push
                          (context, MaterialPageRoute
                          (builder:
                            (context) => favs(),));
                      },
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 25,
                        color: Colors.white30,
                      ),
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
                          color: Colors.white70),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 166, top: 43),
                    child: Text(
                      'Favourites',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white30,
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
