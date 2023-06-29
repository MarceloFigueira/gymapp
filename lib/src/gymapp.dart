import 'package:flutter/material.dart';
import 'package:gymapp/src/pages/authentication_page.dart';

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const AuthenticationPage(),
    );
  }
}
