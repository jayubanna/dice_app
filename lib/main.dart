import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RandomImage(),
  ));
}

class RandomImage extends StatefulWidget {
  const RandomImage({super.key});

  @override
  State<RandomImage> createState() => _RandomImageState();
}

class _RandomImageState extends State<RandomImage> {
  int index = Random().nextInt(dicelist.length);
  int indexs = Random().nextInt(dicelist.length);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff95B7D2),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Text(
            "Total Amount: ${dicelist[index]["value"] + dicelist[indexs]["value"]}",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70,top: 30),
          child: Row(
            children: [
              Image.asset(
               dicelist[index]["image"],
                height: 130,
                width: 130,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                dicelist[indexs]["image"],
                height: 130,
                width: 130,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 290,
        ),
        InkWell(
          onTap: () {
            index = Random().nextInt(dicelist.length);
            indexs = Random().nextInt(dicelist.length);
            setState(() {

            });
          },
          child: Stack(
            children: [
              Image.asset("imags/Button.png"),
              Positioned(
                left: 80,
                top: 30,
                child: Text(
                  "Roll Dice",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

List<Map<String, dynamic>> dicelist = [
  {"image": "imags/1.png", "value": 1},
  {"image": "imags/2.png", "value": 2},
  {"image": "imags/3.png", "value": 3},
  {"image": "imags/4.png", "value": 4},
  {"image": "imags/5.png", "value": 5},
  {"image": "imags/6.png", "value": 6},
];


