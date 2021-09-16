

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(245, 245, 246, 1),
          centerTitle: false,
          title: Text(
            'Gallery',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.camera,
                color: Colors.blue,
              ),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ))))),
      body: SafeArea(
        child: ListView(padding: EdgeInsets.all(16), children: [
          Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(16, 16, 16, 6),
              child: Column(children: [
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60')),
                  title: Text(
                    'Mime Gyabeng',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.blue,
                      ),
                      Text('Kuntuse, Amasaman')
                    ],
                  ),
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
                    height: 218,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover),
                SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: [
                        Material(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(35),
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '233',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FlutterImageStack(
                          imageList: _images,
                          showTotalCount: false,
                          totalCount: 4,
                          itemRadius: 35,
                          itemCount: 4,
                          itemBorderWidth: 2,
                        )
                      ],
                    ),
                    Material(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(35),
                      child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                            Icon(
                              CupertinoIcons.chat_bubble_fill,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '245',
                              style: TextStyle(fontSize: 14),
                            ),
                          ])),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ])),
        ]),
      ),
    );
  }
}
