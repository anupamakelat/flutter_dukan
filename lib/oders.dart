// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_dukan/pages/oderDetails.dart';


class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        //appbar
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 101, 156),
          //  actionsIconTheme: IconThemeData(color: Colors.white),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Orders",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              )
            ],
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
          ],

          //tab bar
          bottom: TabBar(
            tabs: const [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Accepted',
              ),
              Tab(
                text: 'Shipped',
              ),
              Tab(
                text: 'Delivered',
              ),
              Tab(
                text: 'Rejected',
              ),
              Tab(
                text: 'Cancelled',
              ),
              Tab(
                text: 'Failed',
              ),
            ],
            unselectedLabelColor: Colors.white,
            labelColor: const Color.fromARGB(255, 247, 247, 247),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            isScrollable: true,
            indicator: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
              //color: Color.fromARGB(255, 244, 244, 244)
            ),
            indicatorPadding: EdgeInsets.all(8),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Column(
              children: [
                //tile1
                ListTile(
                  onTap: () {},
                  leading: Image.network(
                    'https://static.itavisen.no/wp-content/uploads/2023/08/Screenshot-2023-08-29-at-09.25.39.png',
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("I Phone 15 Pro"),
                      Text("Black/1TB "),
                      Text("₹1,60,000"),
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ),
                SizedBox(
                  height: 20,
                ),

                //tile2
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => OrderDetail()));
                  },
                  leading: Image.network(
                      'https://static.itavisen.no/wp-content/uploads/2023/08/Screenshot-2023-08-29-at-09.25.39.png',
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mac Book M2 Pro"),
                      Text("16GB/1TB SSD"),
                      Text("₹2,30,000"),
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
