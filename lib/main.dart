import 'package:flutter/material.dart';
import 'package:shoesworld/forgotpw.dart';
import 'package:shoesworld/signup.dart';
import 'package:shoesworld/onboard1.dart';
import 'package:shoesworld/onboard2.dart';
import 'package:shoesworld/onboard3.dart';
import 'package:shoesworld/signin.dart';
import 'package:shoesworld/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
        routes: {
          '/splash': (context) => const Splash(),
          '/onboard1': (context) => const Onboard1(),
          '/onboard2': (context) => const Onboard2(),
          '/onboard3': (context) => const Onboard3(),
          '/signin': (context) => const Signin(),
          '/signup': (context) => const Signup(),
           '/forgotpw': (context) => const Forgotpw(),
        });
  }
}
