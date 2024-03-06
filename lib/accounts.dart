// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_dukan/additional.dart';
import 'package:flutter_dukan/pages/payment.dart';
import 'package:flutter_dukan/pages/premium.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Account Info',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 34, 101, 156),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CircleAvatar(
                        backgroundImage: null,
                        radius: 30,
                        child: Icon(
                          Icons.person,
                          size: 30,
                        ),
                      ),
                      //,Icon(Icons.person),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Petunia Pet park',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )),
                            Row(children: [
                              Icon(
                                Icons.edit,
                                size: 16,
                              ),
                              Text('Edit Bussiness Details',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline)),
                            ]),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .9),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Available Credits',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '₹25',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (ctx) => PaymentPage()));
                                    },
                                    child: Text('Add Credits'),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_outline_sharp),
                      onTap: () {},
                      title: Text(
                        'Account Details',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      onTap: () {},
                      title: Text('Store Settings',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.group_add_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PremiumPage()));
                      },
                      title: Text('Join Dukaan VIP Club',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.video_collection_outlined),
                      onTap: () {},
                      title: Text('Tutorials',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline_rounded),
                      onTap: () {},
                      title: Text('Help center',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.email_outlined),
                      onTap: () {},
                      title: Text('Get in touch',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.more_horiz_sharp),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  additional()));
                      },
                      title: Text('Additional Information',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    color: Color.fromARGB(255, 241, 241, 238),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "OUR PROMISE",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: 15,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.Qq0Ov_N_BiXjTfZA3EriXQHaHa%26pid%3DApi&f=1&ipt=ea12ef377497dbc1d15dee754f94ebf17563f6f66ebe52c25f9fb3aa3b41d9b2&ipo=images',
                                  height: 30,
                                ),
                                Text(
                                  '100 % Safe',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Image.network(
                                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.NbKqxcGKZpDQ2olRrtVDWAHaFH%26pid%3DApi&f=1&ipt=15e1b7ef7a031a10f4814831c85a55f880185f65df6d27b5f9d68b741a1fa302&ipo=images',
                                  height: 30,
                                ),
                                Text(
                                  'Auto Data Backup',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ],
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
      ),
    );
  }
}