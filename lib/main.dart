import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kelompok3_g19/Splash_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.light(primary: Color(0xFF9FC088),),),
        home: SplashScreen());
  }
}
