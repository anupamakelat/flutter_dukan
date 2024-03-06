// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_dukan/accounts.dart';
import 'package:flutter_dukan/pages/manage.dart';
import 'package:flutter_dukan/products.dart';
import 'package:flutter_dukan/oders.dart';
import 'package:flutter_dukan/userHome.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int num=0;
  List screen=[
    UserHome(),
    Orders(),
    Products(),
    Manage(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         body: screen.elementAt(num),
         bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
             items: const [
          //Item1
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 251, 253, 255),
          ),
          //iterm 2
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'orders',
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
          //item 3
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Products',
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          //item 4
          BottomNavigationBarItem(
              label: 'Manage',
              icon: Icon(Icons.auto_awesome_motion),
              backgroundColor: Color.fromARGB(255, 252, 254, 255)),
          //item 5
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: Color.fromARGB(255, 255, 255, 255))
        ],
        
        currentIndex: num,
        showSelectedLabels: true,
        onTap: (int index) {
          setState(() {
            num = index;
          });
        },
        iconSize: 30,
        showUnselectedLabels: true,
        selectedItemColor: Color.fromARGB(255, 48, 152, 236),
        unselectedItemColor: Colors.black,
      ),
    );
  }
}