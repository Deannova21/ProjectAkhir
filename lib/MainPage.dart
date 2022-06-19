import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelompok3_g19/DAY1.dart';
import 'package:kelompok3_g19/Gain_Weight.dart';
import 'package:kelompok3_g19/Lose_Weight.dart';
import 'package:kelompok3_g19/Switch_Controller.dart';
import 'package:kelompok3_g19/read_data.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final SwitchController v = Get.put(SwitchController());
  final List<Widget> tabBody = [GainWeight(), LoseWeight()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabBody.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Diet-In", style: TextStyle(fontFamily: "IndieFlower"),),
          flexibleSpace: Obx(() => Container(
                color: v.switchValue.value
                    ? Color.fromARGB(255, 202, 188, 166)
                    : Color(0xFF9FC088),
              )),
          actions: [
            Obx((() => Switch(
                value: v.switchValue.value,
                onChanged: (value) {
                  v.switchValue(value);
                }))),
          ],
          bottom: TabBar(tabs: [
            Tab(
              text: ("Gain Weight"),
            ),
            Tab(
              text: ("Lose Weight"),
            )
          ]),
        ),
        body: TabBarView(
          children: tabBody,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Image.asset("assets/diet.png")),
              ListTile(
                leading: Icon(Icons.note_alt_rounded),
                title: Text("Note"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Read();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
