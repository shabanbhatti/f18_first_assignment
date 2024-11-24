import 'package:f18_first_assignment/appBar.dart';
import 'package:f18_first_assignment/folder1.dart';
import 'package:f18_first_assignment/folder2.dart';
import 'package:f18_first_assignment/folder3.dart';
import 'package:f18_first_assignment/folder4.dart';
import 'package:f18_first_assignment/folder5.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var stackImage =
      'https://media.istockphoto.com/id/1744511338/photo/portrait-of-a-handsome-young-black-man-proposing-a-toast-at-a-christmas-dinner-table-family.webp?a=1&b=1&s=612x612&w=0&k=20&c=x2ojW74l1uNFqGT50fCRcKadH4SiHzvcjL9_xL4rWW8=';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:
              AppBar(backgroundColor: Colors.white, title: const MyAppBar()),
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 1000,
                  width: 1000,
                  child: Image.network(
                    stackImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Folder1(),
                    Folder2(),
                    Folder3(),
                    Folder4(),
                    Folder5()
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
