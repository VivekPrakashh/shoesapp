import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shoesworld/cart.dart';
import 'package:shoesworld/fav.dart';
import 'package:shoesworld/home.dart';
import 'package:shoesworld/notifications.dart';
import 'package:shoesworld/profile.dart';

class Nav extends StatefulWidget {
  const Nav({
    super.key,
  });

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int activeindex = 0;
  int currentindex = 0;
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Fav(),
    Cart(),
    Notifications(),
    Profile()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 70.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 40,
            color: Colors.white,
          ),
        ],
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}



// class _NavState extends State<Nav> {
//   int activeindex = 0;
//   int currentindex = 0;
//   int _selectedIndex = 0;

//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static List<Widget> _widgetOptions = <Widget>[
//     Home(),
//     Catog(),
//     Cart(),
//     Profile()
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed, // Fixed
//         backgroundColor: Colors.black,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 size: 40,
//               ),
//               label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.category_outlined,
//                 size: 40,
//               ),
//               label: 'Category'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.shopping_cart_checkout_outlined,
//                 size: 40,
//               ),
//               label: 'Cart'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.person_2_outlined,
//                 size: 40,
//               ),
//               label: 'Profile'),
//         ],
//         selectedLabelStyle:
//             TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey.shade400,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

