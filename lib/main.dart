import 'package:flutter/material.dart';
import 'package:shoesworld/bestseller.dart';
import 'package:shoesworld/cart.dart';
import 'package:shoesworld/checkout.dart';
import 'package:shoesworld/fav.dart';
import 'package:shoesworld/forgotpw.dart';
import 'package:shoesworld/menshoes.dart';
import 'package:shoesworld/nav.dart';
import 'package:shoesworld/notifications.dart';

import 'package:shoesworld/profile.dart';
import 'package:shoesworld/search.dart';
import 'package:shoesworld/settings.dart';
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
          '/nav': (context) => const Nav(),
          '/checkout': (context) => const Checkout(),
          '/bestseller': (context) => const Bestseller(),
          '/fav': (context) => const Fav(),
          '/cart': (context) => const Cart(),
          '/profile': (context) => const Profile(),
          '/notifications': (context) => const Notifications(),
          '/settings': (context) => const Settings(),
          '/menshoes': (context) => const Menshoes(),
        });
  }
}
