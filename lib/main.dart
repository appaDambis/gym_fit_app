import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/login/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workout Fitness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Quicksand",
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff221E3A)),
        useMaterial3: false,
      ),
      home: LoginPage(),
    );
  }
}
