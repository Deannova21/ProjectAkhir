import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kelompok3_g19/costum_alert.dart';

class Input extends StatelessWidget {
  final TextEditingController hariController = TextEditingController();
  final TextEditingController beratController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Your Result"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              TextField(
                controller: hariController,
                decoration: InputDecoration(hintText: "Hari Ke-"),
              ),
              SizedBox(height: 30),
              TextField(
                controller: beratController,
                decoration: InputDecoration(hintText: "Berat Badan"),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Text("Add"),
                  onPressed: () {
                    //// ADD DATA HERE
                    CostumAlert(context, "Add Note Success");
                    users.add({
                      'Hari': hariController.text,
                      'berat': int.tryParse(beratController.text) ?? 0,
                    });
                    hariController.text = "";
                    beratController.text = "";
                  }),
            ],
          )
        ],
      ),
    );
  }
}
