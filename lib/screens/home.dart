// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:juices_world/widgets/juiceCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF1F2B45),
            elevation: 0,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                  Text(
                    "The Juice",
                    style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )
                ])),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFF1F2B45),
              Color(0xFF0A101A),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("The Juice",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'DancingScript',
                              color: Colors.white)),
                      Text(
                          "We provide a variety of fresh juices with various flavors. get fresh juice easily",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'DancingScript',
                              color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 110),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Variation: ",
                        style: TextStyle(color: Colors.white, fontSize: 21),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          JuiceCard(imagePath: '/images/myrtille-fruits.jpg'),
                          JuiceCard(imagePath: '/images/orange-fruits.jpg'),
                          JuiceCard(imagePath: '/images/fraise-fruits.jpg'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 1,
              left: (MediaQuery.of(context).size.width - 50) / 2,
              child: Image.asset('images/ice_cup_juice.png',
                  width: 420, height: 420)),
        ]));
  }
}
