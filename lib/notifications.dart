import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List data1 = [
    {
      "name": "Nike Club Max",
      "subname": "Product With Offers",
      "price": "\$365.93",
      "times": "6 min ago",
      "image":
          'https://cdn.shopify.com/s/files/1/2117/7563/products/nike-air-jordan-royal-high-tops-7-fashionably-yours-1_grande.jpg?v=1677083125',
    },
    {
      "name": "Nike Club Max",
      "subname": "Product With Offers",
      "price": "\$365.93",
      "times": "6 min ago",
      "image":
          'https://cdn.shopify.com/s/files/1/0099/5232/9785/products/553560-066-7_800x.png?v=1681806800',
    },
  ];
  List data2 = [
    {
      "name": "Nike Club Max",
      "subname": "Product With Offers",
      "price": "\$365.93",
      "times": "6 min ago",
      "image":
          'https://cdn.shopify.com/s/files/1/2117/7563/products/nike-air-jordan-royal-high-tops-7-fashionably-yours-1_grande.jpg?v=1677083125',
    },
    {
      "name": "Nike Club Max",
      "subname": "Product With Offers",
      "price": "\$365.93",
      "times": "6 min ago",
      "image":
          'https://cdn.shopify.com/s/files/1/2117/7563/products/nike-air-jordan-royal-high-tops-7-fashionably-yours-1_grande.jpg?v=1677083125',
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
                    'Notifications',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Clear All',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Today',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                  children: List.generate(data1.length, (index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/menshoes', arguments: {
                      "image": data1[index]["image"],
                      "name": data1[index]["name"],
                      "price": data1[index]["price"],
                    });
                  },
                  child: Carts(
                    image: data1[index]["image"],
                    subname: data1[index]["subname"],
                    name: data1[index]["name"],
                    price: data1[index]["price"],
                    times: data1[index]["times"],
                    onTap: () {},
                  ),
                );
              })),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Yesterday',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                  children: List.generate(data2.length, (index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/menshoes', arguments: {
                      "image": data2[index]["image"],
                      "name": data2[index]["name"],
                      "price": data2[index]["price"],
                    });
                  },
                  child: Carts1(
                    image: data2[index]["image"],
                    subname: data2[index]["subname"],
                    name: data2[index]["name"],
                    price: data2[index]["price"],
                    times: data2[index]["times"],
                    onTap: () {},
                  ),
                );
              })),
            ])));
  }
}

class Carts extends StatelessWidget {
  Carts(
      {super.key,
      this.name,
      this.price,
      this.subname,
      this.times,
      this.image,
      required this.onTap});
  String? name;
  String? price;
  String? subname;
  String? times;
  String? image;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
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
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  '$image',
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$name',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      '$times',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  '$subname',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      '$price',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '$price',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class Carts1 extends StatelessWidget {
  Carts1(
      {super.key,
      this.name,
      this.price,
      this.subname,
      this.times,
      this.image,
      required this.onTap});
  String? name;
  String? price;
  String? subname;
  String? times;
  String? image;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
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
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  '$image',
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$name',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      '$times',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  '$subname',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      '$price',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '$price',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
