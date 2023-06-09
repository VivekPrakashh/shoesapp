import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List data3 = [
    {
      "name": "Nike Jordan",
      "price": "\$965.00",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqDleEVb0RdqV9kEBj0OUsjLhKCm9sLA8zQA&usqp=CAU"
    },
    {
      "name": "Nike Jordan",
      "price": "\$465.00",
      "image": "https://m.media-amazon.com/images/I/71a95kdnJ3L._UL1500_.jpg"
    },
  ];
  List data1 = [
    {
      "name": "Mens",
    },
    {
      "name": "Women",
    },
    {
      "name": "Unisex",
    },
  ];
  List data2 = [
    {
      "name": "UK 4.5",
    },
    {
      "name": "US 5.5",
    },
    {
      "name": "UK 6",
    },
    {
      "name": "EU 11.5",
    },
  ];
  List data = [
    {
      "image": "https://1000logos.net/wp-content/uploads/2021/11/Nike-Logo.png",
    },
    {
      "image": "https://1000logos.net/wp-content/uploads/2021/04/Puma-logo.png",
    },
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/2/24/Adidas_logo.png",
    },
    {
      "image":
          "https://logos-world.net/wp-content/uploads/2020/09/Fila-Logo.png",
    },
    {
      "image":
          "https://hindubabynames.info/downloads/wp-content/themes/hbn_download/download/clothing-and-accessories-companies/bata-logo.png",
    },
  ];

  int activeindex = 0;
  int activeindex1 = 0;
  int currentindex = 0;
  double start = 600.0;
  double end = 3000.0;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  var index;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: Drawer(
            backgroundColor: Color(0xff1A2530),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xff1A2530),
                    ),
                    accountName: Text(
                      "Alission Backers",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text(
                      "alissionbackers@gmailmail.com",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://wallpaperaccess.com/full/2580788.jpg',
                      ),
                    )),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text("Favorites",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pushNamed(context, '/fav');
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text(" My Cart",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text("Profile",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_shipping,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text("Orders",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text("Notifications",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pushNamed(context, '/notifications');
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text("Settings",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1.5,
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text("Sign Out",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
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
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                      ),
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Store Location',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Mondolibug, Sylihut',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      height: 40,
                      width: 40,
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
                      child: IconButton(
                          icon: Icon(
                            Icons.filter_list,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.white,
                                isScrollControlled: true,
                                builder: (context) {
                                  return StatefulBuilder(builder: (BuildContext
                                          context,
                                      StateSetter
                                          setState /*You can rename this!*/) {
                                    return Container(
                                      height: 500,
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              topRight: Radius.circular(40))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text('Filter',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              Text('RESET',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text('Gender',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: List.generate(
                                                data1.length, (index) {
                                              return InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    activeindex = index;
                                                  });
                                                },
                                                child: Gend(
                                                  name: data1[index]["name"],
                                                  currentindex:
                                                      activeindex == index
                                                          ? 1
                                                          : 0,
                                                ),
                                              );
                                            }),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Size',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: List.generate(
                                                data2.length, (index) {
                                              return InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    activeindex1 = index;
                                                  });
                                                },
                                                child: Sizes(
                                                  name: data2[index]["name"],
                                                  currentindex:
                                                      activeindex1 == index
                                                          ? 1
                                                          : 0,
                                                ),
                                              );
                                            }),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Price',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          RangeSlider(
                                            activeColor: Colors.blue,
                                            inactiveColor: Colors.grey,
                                            values: RangeValues(start, end),
                                            labels: RangeLabels(
                                                start.toString(),
                                                end.toString()),
                                            onChanged: (value) {
                                              setState(() {
                                                start = value.start;
                                                end = value.end;
                                              });
                                            },
                                            min: 500.0,
                                            max: 4000.0,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Start: " +
                                                    start.toStringAsFixed(2),
                                                style: const TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Spacer(),
                                              Text(
                                                "End: " +
                                                    end.toStringAsFixed(2),
                                                style: const TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            height: 50,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.blue,
                                            ),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Apply',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                                });
                          }))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
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
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Looking For Shoes',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(data.length, (index) {
                    return Brand(
                      image: data[index]["image"],
                    );
                  })),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Popular Shoes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/bestseller');
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     InkWell(
              //       onTap: () {

              //         Navigator.pushNamed(context, '/menshoes', arguments: {
              //         "image": data[index]["image"],
              //         "name": data[index]["name"],
              //         "price": data[index]["price"],

              //       });
              //       },
              //       child: Container(
              //         height: 210,
              //         width: 160,
              //         decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(20),
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.grey.shade400,
              //                 offset: const Offset(
              //                   5.0,
              //                   5.0,
              //                 ),
              //                 blurRadius: 10.0,
              //                 spreadRadius: 2.0,
              //               ),
              //             ]),
              //         child: Column(
              //           children: [
              //             Container(
              //               height: 105,
              //               width: double.infinity,
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.only(
              //                     topLeft: Radius.circular(20),
              //                     topRight: Radius.circular(20)),
              //               ),
              //               child: ClipRRect(
              //                 borderRadius: BorderRadius.only(
              //                     topLeft: Radius.circular(20),
              //                     topRight: Radius.circular(20)),
              //                 child: Image.network(
              //                   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqDleEVb0RdqV9kEBj0OUsjLhKCm9sLA8zQA&usqp=CAU',
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               'Best Seller',
              //               style: TextStyle(
              //                 fontSize: 16,
              //                 color: Colors.blue,
              //               ),
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               'Nike Jordan',
              //               style: TextStyle(
              //                   fontSize: 20, fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               '\$453.00',
              //               style: TextStyle(
              //                   fontSize: 16,
              //                   color: Colors.black,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(data3.length, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/menshoes', arguments: {
                          "image": data3[index]["image"],
                          "name": data3[index]["name"],
                          "price": data3[index]["price"],
                        });
                      },
                      child: Modal(
                        image: data3[index]["image"],
                        name: data3[index]["name"],
                        price: data3[index]["price"],
                      ),
                    );
                  })),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'New Arrivals',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/menshoes', arguments: {
                    "image":
                        "https://cdn.shopify.com/s/files/1/0015/1263/6483/products/jordan-1-low-black-university-blue-white-w-dropout-5.jpg?v=1676597961",
                    "name": "Nike Jordan",
                    "price": "\$453",
                  });
                },
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10),
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
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Best Seller',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            'Nike Jordan',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$453.00',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.network(
                            'https://cdn.shopify.com/s/files/1/0015/1263/6483/products/jordan-1-low-black-university-blue-white-w-dropout-5.jpg?v=1676597961',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Modal extends StatelessWidget {
  Modal({super.key, this.name, this.image, this.price});
  String? name;
  String? price;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: [
          Container(
            height: 105,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.network(
                '$image',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
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
            '$name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$price',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class Sizes extends StatelessWidget {
  Sizes({super.key, this.name, this.currentindex});
  String? name;
  int? currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentindex == 0 ? Colors.grey.shade200 : Colors.blue),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            '$name',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: currentindex == 0 ? Colors.grey : Colors.white),
          )),
    );
  }
}

class Gend extends StatelessWidget {
  Gend({super.key, this.name, this.currentindex});
  String? name;
  int? currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentindex == 0 ? Colors.grey.shade200 : Colors.blue),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            '$name',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: currentindex == 0 ? Colors.grey : Colors.white),
          )),
    );
  }
}

class Brand extends StatelessWidget {
  Brand({super.key, this.image});
  String? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
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
              alignment: Alignment.center, child: Image.network('$image')),
        ),
      ],
    );
  }
}
