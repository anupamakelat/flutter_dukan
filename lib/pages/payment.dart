// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dukan/pages/oderDetails.dart';
import 'package:google_fonts/google_fonts.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Payments',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 34, 101, 156),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.black38),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      "Transaction Limt",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 1, right: 5),
                    child: Text(
                        "A free Limit which will you recieve the online payments directly into your bank accounts",
                        style: GoogleFonts.poppins(fontSize: 14)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 30, top: 10),
                    child: LinearProgressIndicator(
                      value: .7,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "35600 left out of ₹50000",
                      style: GoogleFonts.poppins(color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF136EB4)),
                      ),
                      child: Text(
                        "Increase the limit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Payments Overview",
                          style: GoogleFonts.poppins(),
                        ),
                        SizedBox(
                          width: 140,
                        ),
                        Text(
                          "Life Time",
                          style: GoogleFonts.poppins(color: Colors.black45),
                        ),
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.black45,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 229, 100, 8),
                              borderRadius: BorderRadius.circular(15)),
                          width: 172,
                          height: 90,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "AMOUNT ON HOLD",
                                  style: GoogleFonts.josefinSans(
                                      color: Color.fromARGB(255, 224, 224, 224),
                                      fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, right: 80),
                                child: Text(
                                  "₹ 0",
                                  style: GoogleFonts.josefinSans(
                                      color: Colors.white, fontSize: 28),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 0, 193, 0),
                          ),
                          width: 173,
                          height: 90,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "AMOUNT RECIEVED",
                                  style: GoogleFonts.josefinSans(
                                      color: Color.fromARGB(255, 224, 224, 224),
                                      fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, right: 50),
                                child: Text(
                                  "₹ 13325",
                                  style: GoogleFonts.josefinSans(
                                      color: Colors.white, fontSize: 28),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Transactions",
                            style: GoogleFonts.josefinSans(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      )),
                  ListTile(
                    leading: Image.network(
                        "https://static.itavisen.no/wp-content/uploads/2023/08/Screenshot-2023-08-29-at-09.25.39.png"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mac Book M2 Pro",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        Text("16GB/1TB SSD",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black45))
                      ],
                    ),
                    trailing: Text(
                      " Delivered",
                      style: GoogleFonts.josefinSans(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => OrderDetail()));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}