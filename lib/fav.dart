import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Fav extends StatelessWidget {
  const Fav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text('Favorite',style: TextStyle(fontSize: 30),)),
    );
  }
}