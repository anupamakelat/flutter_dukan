// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Manage extends StatefulWidget {
  const Manage({super.key});

  @override
  State<Manage> createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  List<Icon> icons = [
    Icon(
      Icons.payment_rounded,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.discount_outlined,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.group,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.bolt_outlined,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.circle_outlined,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.electric_bike_outlined,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.qr_code,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
  ];

  List<Color> colors = [
    const Color.fromARGB(255, 0, 255, 8),
    Colors.orange,
    Colors.green,
    Color.fromARGB(255, 67, 59, 125),
    Color.fromARGB(255, 48, 41, 250),
    Color.fromARGB(255, 68, 3, 133),
    const Color.fromARGB(255, 54, 57, 54),
  ];

  List<String> names = [
    'Payments',
    'Discount Coupons',
    'Audience',
    'Dukaan Plugins',
    'Dukaan Themes',
    'Delivery',
    'Store QR Code',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Manage',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        leading: Icon(Icons.dashboard_customize_outlined),
        backgroundColor: const Color.fromARGB(255, 34, 101, 156),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 3)),
            itemBuilder: (context, index) {
              return GridTile(
                  child: Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: 50,
                            height: 40,
                            color: colors[index],
                            child: Center(
                              child: icons[index],
                            ),
                          )),
                      Text(names[index])
                    ],
                  ),
                ),
              ));
            }),
      ),
    );
  }
}