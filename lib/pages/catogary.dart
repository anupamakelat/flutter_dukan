// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CatogoryPage extends StatefulWidget {
  const CatogoryPage({super.key});

  @override
  State<CatogoryPage> createState() => _CatogoryPageState();
}

class _CatogoryPageState extends State<CatogoryPage> {
  List<String> image = [
    'https://static.itavisen.no/wp-content/uploads/2023/08/Screenshot-2023-08-29-at-09.25.39.png',
    'https://imgs.search.brave.com/ECtC5bxEI_pBSFmmyGkK7X2R77TypF8295yjL8Vm07k/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NzFhcDc4ZGdhUkwu/anBn',
    'https://imgs.search.brave.com/s_lwFEs-0MNK2NT3C6U5Ag5Wi8duPYqXUFRQMoJwH9M/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTE5/NDgxNDg4Ny9waG90/by9hcHBsZS1haXJw/b2RzLXdpcmVsZXNz/LWJsdWV0b290aC1o/ZWFkcGhvbmVzLWFu/ZC1jaGFyZ2luZy1j/YXNlLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1TSld5djdk/M29CWXlKQkJwRnpM/Q01XWDVfeWlUN3Np/VmI2M08tQ3Rxdi1R/PQ',
    'https://imgs.search.brave.com/K0IC0jHOHGzslSMCfMn-CnxGIMWhe1hZDWndPuM7_3Q/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tb25p/Y2FqZXdlbGVycy5j/b20vY2RuL3Nob3Av/cHJvZHVjdHMvR0Ey/MDEtMUEuanBnP3Y9/MTQ5MzY5MzI5OCZ3/aWR0aD01MzM',
    'https://imgs.search.brave.com/_ZcQ1fJ2YJR3HMY5aaf3Pc8xjIwb9HGgng32bPUu9po/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNDU4/ODgyNDIxL3Bob3Rv/L25ldy1hcHBsZS1p/bWFjLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1fRVJuT08w/Nk1PZHBGeFJTNldf/OFM5bHNvYzQ2eHdM/UkExQnJfWkt6alpr/PQ'
  ];

  List<String> product = ['15 Pro', 'ROG 5', "Air Pods", 'Climber 15', "I Mac"];

  List<String> model = ["Apple", "Asus", 'Apple', 'G-Shock', 'Apple'];

  List<String> price = ['1,36,999', '1,20,000', '24,000', '95,000', '1,68,999'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.network(
                  image[index],
                  height: 120,
                  width: 120,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product[index],
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      model[index],
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      '₹${price[index]}',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'In Stock',
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                  ],
                ),
              ),
            );
          }),
    ));
  }
}