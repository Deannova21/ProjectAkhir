import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DAY5 extends StatelessWidget {
  const DAY5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HARI KE-5", style: TextStyle(fontFamily: "Nunito"),),
        backgroundColor:Color(0xFF9FC088),
      ),
      backgroundColor: Color.fromARGB(255, 244, 244, 244),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/sandwichalpukat.jpeg"),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF9FC088),
                    ),
                    child: Text(
                      "BREAKFAST", //makanpagi
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PottaOne",
                          color: Color.fromARGB(255, 239, 237, 236)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 400,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 44, 153, 145),
                    ),
                    child: Text(
                      "\n \n \t1. Alpukat dan Sandwich Telur  \n \t(Buah alpukat dan roti tawar isi \n \ttelur)",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 239, 237, 234)),
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/tunasalad.jpeg"),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF9FC088),
                    ),
                    child: Text(
                      "LUNCH",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PottaOne",
                          color: Color.fromARGB(255, 246, 246, 244)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 400,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 44, 153, 145),
                    ),
                    child: Text(
                      "\n \n \t1. Salad Tuna dan Alpukat (Salad \n \tsayur di campur dengan ikan tuna \n \tdan juga buah alpukat)",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 238, 237, 234)),
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/pumpkin.jpeg"),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF9FC088),
                    ),
                    child: Text(
                      "DINNER",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PottaOne",
                          color: Color.fromARGB(255, 246, 246, 244)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 400,
                    height: 200,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 44, 153, 145),
                    ),
                    child: Text(
                      "\n \n \t1. Sup Labu (Karbohidrat yang \n \ttinggi dari kandungan buah labu)",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 238, 237, 234)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 100,
                        margin: EdgeInsets.only(top: 10),
                        color: Color.fromARGB(255, 222, 177, 13),
                        child: Text(
                          "All EAT DAY 5 \n 1450 KALORI",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 234, 229, 215)),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
