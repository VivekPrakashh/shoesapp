import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://images.pexels.com/photos/345415/pexels-photo-345415.jpeg',
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    bottom: 40,
                    left: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Summer Shoes\nNike 2022',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.grey,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'There Are Many Beautiful And\nAttractive Plants To Your Room',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.grey,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 20,
                              color: Colors.grey.shade200,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/signin');
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
