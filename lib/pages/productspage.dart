//import 'package:flutter/foundation.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<String> category = [
    'Mobiles',
    'Laptops',
    'Air Podes',
    'Watches',
    'Desktop'
  ];

  List<String> subcategory = ['Apple', 'Asus ROG', 'Apple', "G-SHOCK", 'Apple'];

  List<String> image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpcFnm2pVomI5W-4gaJMIQuPUtY_ZXQohJWDGFmkeDyyALcNEK2VEIR0NkxjAwzJaLQcQ&usqp=CAU',
    'https://imgs.search.brave.com/xde4HFMoU5vC_b_0cvgZr7sZN6c6S3hbHtO9sRrBdMM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jMS5u/ZXdlZ2dpbWFnZXMu/Y29tL1Byb2R1Y3RJ/bWFnZUNvbXByZXNz/QWxsMzAwL0E4WDVT/MjIwNjE4MTczRTRS/QjEuanBn',
    'https://imgs.search.brave.com/s_lwFEs-0MNK2NT3C6U5Ag5Wi8duPYqXUFRQMoJwH9M/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTE5/NDgxNDg4Ny9waG90/by9hcHBsZS1haXJw/b2RzLXdpcmVsZXNz/LWJsdWV0b290aC1o/ZWFkcGhvbmVzLWFu/ZC1jaGFyZ2luZy1j/YXNlLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1TSld5djdk/M29CWXlKQkJwRnpM/Q01XWDVfeWlUN3Np/VmI2M08tQ3Rxdi1R/PQ',
    'https://imgs.search.brave.com/6yxVZCc3XW2vT8DgUP4av3mj51pcuo6ZOue-DumkuLM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/ODFPZE9RbEpVb0wu/anBn',
    'https://imgs.search.brave.com/_ZcQ1fJ2YJR3HMY5aaf3Pc8xjIwb9HGgng32bPUu9po/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNDU4/ODgyNDIxL3Bob3Rv/L25ldy1hcHBsZS1p/bWFjLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1fRVJuT08w/Nk1PZHBGeFJTNldf/OFM5bHNvYzQ2eHdM/UkExQnJfWkt6alpr/PQ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(4.0),
        child: ListView.builder(
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: ListTile(
                  onTap: () {},
                  leading: Image.network(
                    image[index],
                    height: 120,
                    width: 120,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category[index],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        subcategory[index],
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}