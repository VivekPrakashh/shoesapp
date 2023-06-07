import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  bool switchValue1 = true;
  bool switchValue2 = true;
  bool switchValue3 = true;
  bool switchValue4 = true;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 40,
              ),
              Row(
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
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Account',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.notifications_active,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Notification Setting',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.local_shipping,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Shipping Address',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.payments,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Payment Info',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.delete,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Delete Account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'App Setting',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Eneble Face ID For Log In',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: switchValue1,
                    activeColor: CupertinoColors.activeBlue,
                    onChanged: (bool? value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        switchValue1 = value ?? false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Eneble Push Notifications',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: switchValue2,
                    activeColor: CupertinoColors.activeBlue,
                    onChanged: (bool? value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        switchValue2 = value ?? false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Enable Location Services',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: switchValue3,
                    activeColor: CupertinoColors.activeBlue,
                    onChanged: (bool? value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        switchValue3 = value ?? false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: switchValue4,
                    activeColor: CupertinoColors.activeBlue,
                    onChanged: (bool? value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        switchValue4 = value ?? false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
            ])));
  }
}
