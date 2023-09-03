import 'package:flutter/material.dart';
import 'package:prg3/Screen/home.dart';
import 'package:prg3/Screen/login.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "User CRUD",
      initialRoute: "/",
      routes: {
        "/" : (context) => const Home(),
        "/login" : (context) => const Login(),
      },
    );
  }
}
