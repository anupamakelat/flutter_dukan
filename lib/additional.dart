// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class additional extends StatefulWidget {
   additional({super.key});

  @override
  State<additional> createState() => _additionalState();
}

class _additionalState extends State<additional> {
   bool val = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 66, 117, 204) ,
        title: Text('Aditional Information',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {} 
                      ),
                       Text('Share Dukaan App',style: TextStyle(fontSize: 17),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.language_outlined,size: 34,),
                        onPressed: () {},
                      ),
                       Text('Change Language',style: TextStyle(fontSize: 17),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Row(
                         children: [
                           IconButton(
                            icon: Icon(Icons.wechat_rounded,size: 38,),
                            onPressed: () {},
                                                 ),
                        Text('WhatsApp Chat Support',style: TextStyle(fontSize: 17),),
                         ],
                       ),
                      
                       Switch(value: val, onChanged:(value){
                      setState(() {
                        if(val==false){
                            val=true;
                          }
                          else{
                            val=false;
                          }
                        
                      });
                    
                       })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     IconButton(
                        icon: Icon(Icons.lock_outline,size: 35,),
                        onPressed: () {},
                      ),
                       Text('Privacy Policy',style: TextStyle(fontSize: 17),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.star_border_outlined,size: 35,),
                        onPressed: () {},
                      ),
                      Text('Rate Us',style: TextStyle(fontSize: 17),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.exit_to_app,size: 35,),
                        onPressed: () {},
                      ),
                      Text('Sign Out',style: TextStyle(fontSize: 17),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 350,),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Version 2.4.2',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}