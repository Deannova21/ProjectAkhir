import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelompok3_g19/costum_alert.dart';
import 'package:kelompok3_g19/input.dart';
import 'package:kelompok3_g19/item_card.dart';

class Read extends StatelessWidget {
  final TextEditingController hariController = TextEditingController();
  final TextEditingController beratController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Note",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(children: [
        ListView(
          children: [
            // lihat data
            StreamBuilder<QuerySnapshot>(
              stream: users.snapshots(),
              builder: (_, snapshot) {
                return (snapshot.hasData)
                    ? Column(
                        children: snapshot.data!.docs
                            .map(
                              (e) => ItemCard(
                                e.get('Hari'),
                                e.get('berat'),
                                onDelete: () {
                                  users.doc(e.id).delete();
                                },
                                onUpdate: () {
                                  users
                                      .doc(e.id)
                                      .update({'berat': e.get('berat') + 1});
                                },
                              ),
                            )
                            .toList(),
                      )
                    : Text('Loading...');
              },
            ),
            SizedBox(height: 150)
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Input();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
