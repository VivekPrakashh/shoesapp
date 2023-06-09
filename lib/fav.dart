import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  List data = [
    {
      "image": "https://m.media-amazon.com/images/I/71a95kdnJ3L._UL1500_.jpg",
      "name": "Nike Jordan",
      "price": "\$453.00"
    },
    {
      "image":
          "https://static.nike.com/a/images/t_prod_ss/w_960,c_limit,f_auto/953f8c77-48ab-4583-b040-c04a3a93ab32/air-jordan-1-ko-chicago-release-date.jpg",
      "name": "Nike Jordan",
      "price": "\$553.00"
    },
    {
      "image":
          "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0f01feae-e8f2-4c4c-bf4a-d243a0d6e65a/air-jordan-1-retro-high-og-shoes-Pz6fZ9.png",
      "name": "Nike Jordan",
      "price": "\$753.00"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlm4ednix-OjMPwzOz0Mov8nGuefDqjNNQ5BttUFaS9Rr9-x4vQ9BQg-FfQhLwfFJQqMg&usqp=CAU",
      "name": "Nike Jordan",
      "price": "\$653.00"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/nav');
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ]),
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.chevron_left_sharp,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Favourite',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ]),
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              GridView.count(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                shrinkWrap: true,
                children: List.generate(
                  data.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          height: 210,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ]),
                          child: Column(children: [
                            Stack(children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/menshoes',
                                      arguments: {
                                        "image": data[index]["image"],
                                        "name": data[index]["name"],
                                        "price": data[index]["price"],
                                      });
                                },
                                child: Container(
                                  height: 105,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    child: Image.network(
                                      data[index]["image"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade400,
                                          offset: const Offset(
                                            2.0,
                                            2.0,
                                          ),
                                          blurRadius: 5.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ]),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              )
                            ]),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Best Seller',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    data[index]["name"],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        data[index]["price"],
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ])),
                    );
                  },
                ),
              ),
            ])));
  }
}

class Grids extends StatefulWidget {
  Grids({
    required this.price,
    required this.image,
    required this.name,
    required this.onTap,
  });
  String? image;
  String? name;

  String? price;
  Function()? onTap;

  @override
  State<Grids> createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
