import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kelompok3_g19/DAYfive.dart';
import 'package:kelompok3_g19/DAYfour.dart';
import 'package:kelompok3_g19/DAYone.dart';
import 'package:kelompok3_g19/DAYseven.dart';
import 'package:kelompok3_g19/DAYsix.dart';
import 'package:kelompok3_g19/DAYthree.dart';
import 'package:kelompok3_g19/DAYtwo.dart';

class GainWeight extends StatelessWidget {
  const GainWeight({Key? key}) : super(key: key);

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
                    MaterialPageRoute(builder: (context) => const DAYone()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/day1.png")),
              ),

              //day2
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAYtwo()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/day2.png")),
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
                    MaterialPageRoute(builder: (context) => const DAYthree()),
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
                    MaterialPageRoute(builder: (context) => const DAYfour()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/day4.png")),
              ),
            ],
          ),
          Row(
            //day5
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAYfive()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/day5.png")),
              ),
              //day6
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAYsix()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("assets/day6.png")),
              ),
            ],
          ),
          Row(
            children: [
              //day7
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DAYseven()),
                  );
                },
                child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 10, left: 100),
                    child: Image.asset("assets/day7.png")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
