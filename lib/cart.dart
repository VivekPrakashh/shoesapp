import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'My Cart',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Carts(
                name: "Nike Club Max",
                price: "\$65.93",
                size: "L",
                onTap: () {},
                image:
                    'https://cdn.shopify.com/s/files/1/2117/7563/products/nike-air-jordan-royal-high-tops-7-fashionably-yours-1_grande.jpg?v=1677083125',
              ),
              SizedBox(
                height: 20,
              ),
              Carts(
                name: "Nike Club Max",
                price: "\$65.93",
                size: "L",
                onTap: () {},
                image:
                    'https://cdn.shopify.com/s/files/1/0099/5232/9785/products/553560-066-7_800x.png?v=1681806800',
              ),
              SizedBox(
                height: 20,
              ),
              Carts(
                name: "Nike Club Max",
                price: "\$65.93",
                size: "L",
                onTap: () {},
                image:
                    'https://cdn.shopify.com/s/files/1/0255/4429/4477/products/Screenshot-2023-04-12-at-01-04-27.png?v=1681260886&width=533',
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 210,
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Subtotal',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '\$1250.00',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Shopping',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '\$50.00',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        thickness: 1.0,
                        color: Colors.grey.shade500,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Total Cost',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '\$1300.00',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/checkout');
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Checkout',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      )
                    ],
                  ))
            ])));
  }
}

class Carts extends StatelessWidget {
  Carts(
      {super.key,
      this.name,
      this.price,
      this.size,
      this.image,
      required this.onTap});
  String? name;
  String? price;
  String? size;
  String? image;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
              Text(
                '$name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '$price',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
                          Icons.remove,
                          size: 20,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
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
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            Text(
              '$size',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 26,
            ),
            Icon(
              Icons.delete,
              color: Colors.grey,
            ),
          ],
        )
      ],
    );
  }
}
