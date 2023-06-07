import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Menshoes extends StatefulWidget {
  const Menshoes({super.key});

  @override
  State<Menshoes> createState() => _MenshoesState();
}

class _MenshoesState extends State<Menshoes> {
  List data1 = [
    {
      "num": "38",
    },
    {
      "num": "39",
    },
    {
      "num": "40",
    },
    {
      "num": "41",
    },
    {
      "num": "42",
    },
  ];
  List data = [
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqDleEVb0RdqV9kEBj0OUsjLhKCm9sLA8zQA&usqp=CAU",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqDleEVb0RdqV9kEBj0OUsjLhKCm9sLA8zQA&usqp=CAU",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqDleEVb0RdqV9kEBj0OUsjLhKCm9sLA8zQA&usqp=CAU",
    },
  ];
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    final Map rcvdData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
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
                    'Mens Shoes',
                    style: TextStyle(fontSize: 20, color: Colors.black),
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
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  rcvdData["image"],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'BEST SELLER',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                rcvdData["name"],
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                rcvdData["price"],
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Air Jordan is an American brand of bascetball\nshoes athletic, casual, and style clothing\nproduced by Nike...',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Gallery',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                  children: List.generate(data.length, (index) {
                return Gallery(
                  images: data[index]["images"],
                );
              })),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Size',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'EU',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'UK',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'US',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(data1.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          activeindex = index;
                        });
                      },
                      child: Sizzes(
                        num: data1[index]["num"],
                        currentindex: activeindex == index ? 1 : 0,
                      ),
                    );
                  })),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$865.00',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ])));
  }
}

class Sizzes extends StatelessWidget {
  Sizzes({super.key, this.num, this.currentindex});
  String? num;
  int? currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: currentindex == 0 ? Colors.grey.shade200 : Colors.blue),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '$num',
          style: TextStyle(
              fontSize: 20,
              color: currentindex == 0 ? Colors.grey : Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  Gallery({super.key, this.images});
  String? images;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              '$images',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
