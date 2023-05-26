import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/onboard1');
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        'https://e0.pxfuel.com/wallpapers/650/422/desktop-wallpaper-a-priemira-edit-jordan-jordan1-offwhite-air-nike-jordan-shoes-shoes-jordan-shoes-retro-custom-shoes-thumbnail.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                    top: 160,
                    left: 120,
                    child: Text(
                      'OXY BOOTS',
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.grey,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
