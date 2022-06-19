import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelompok3_g19/DAY1.dart';
import 'package:kelompok3_g19/DAY2.dart';
import 'package:kelompok3_g19/DAY3.dart';
import 'package:kelompok3_g19/DAY4.dart';
import 'package:kelompok3_g19/DAY5.dart';
import 'package:kelompok3_g19/DAY6.dart';
import 'package:kelompok3_g19/DAY7.dart';

class LoseWeight extends StatelessWidget {
  const LoseWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              //day1
               GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAY1()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Image.asset("assets/hari1.png")),
              ),
              //day2
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAY2()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/hari2.png")),
              ),
            ],
          ),  
          Row(
            children: [
              //day3
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAY3()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/day3.png")),
              ),

              //day4
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAY4()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/hari4.png")),
              ),
        ]),
         Row(
            //day5
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAY5()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/hari5.png")),
              ),
              //day6
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAY6()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/hari6.png")),
              ),
            ]),
             Row(
            children: [
              //day7
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAY7()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10, left: 100),
                    child: Image.asset("assets/hari7.png")),
              ),
            ],
          ),
          ]),
    );
  }
}
