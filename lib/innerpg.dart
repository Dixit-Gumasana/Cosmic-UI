import 'package:flutter/material.dart';

import 'homescreen.dart';

class innerpg extends StatefulWidget {
  const innerpg({super.key});

  @override
  State<innerpg> createState() => _innerpgState();
}

class _innerpgState extends State<innerpg> {
  List icon = ['Icons.monitor_weight_outlined'];

  List text1 = [
    'Mass',
    'Gravity',
    'Day',
    'Esc.Velocity',
    'Mean',
    'Distance from'
  ];

  List text2 = [
    '(10^24 kg)',
    '(m/s2)',
    '(hours)',
    '(km/s)',
    'Temp(C)',
    'Sun(106km)'
  ];

  List text3 = ['5.97', '9.8', '24', '11.2', '15', '5.97'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/innerpg.png',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.0),
                colorBlendMode: BlendMode.darken),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 62, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home(),
                          ));
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white.withOpacity(0.7),
                      size: 25,
                    )),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white.withOpacity(0.7),
                      size: 25,
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 270),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.51,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black54.withOpacity(0.45),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 115, right: 110, top: 205),
            child: Container(
              height: MediaQuery.of(context).size.height / 5.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/planet_earth.png', fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 151, right: 145, top: 345),
            child: Text(
              'Earth',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, left: 50, top: 370),
            child: GridView.builder(
              itemCount: 6,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 115,
                  mainAxisSpacing: 45),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    // Container(
                    //   height: MediaQuery.of(context).size.height/16.6,
                    //   width: MediaQuery.of(context).size.width/7.8,
                    //   child: Image.asset('assets/icon1.png',
                    //   fit: BoxFit.cover),
                    // ),
                    Icon(
                      Icons.flare_outlined,
                      color: Colors.white,
                      size: 40,
                    ),

                    SizedBox(height: 8),
                    Text(
                      '${text1[index]}',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white70),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '${text2[index]}',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white70),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${text3[index]}',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 155,right: 145,top: 722,bottom: 50),
            child: Text('Visit',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.99),
              ),),
          ),
        ],
      ),
    );
  }
}
