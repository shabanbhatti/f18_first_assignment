import 'package:f18_first_assignment/folder1_addtocart.dart';
import 'package:f18_first_assignment/folder3_addTocart.dart';
import 'package:flutter/material.dart';

class Folder3 extends StatelessWidget {
  Folder3({
    super.key,
  });
  var circularAvatar =
      'https://media.istockphoto.com/id/1421688556/photo/beef-shawarma-on-a-dark-background-shawarma-with-beef-in-pita-bread.webp?a=1&b=1&s=612x612&w=0&k=20&c=oiXbw99EBrdg9NHNUoBNdUQ_WmZF2Dh9VvlU4Ns8jOk=';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
              color: Colors.black,
              offset: Offset(2, 2),
              spreadRadius: 2.0,
              blurRadius: 3)
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 35,
            foregroundImage: NetworkImage(circularAvatar),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Loaded Zinger Shawarma'),
              Text(
                '(with mayo,meat + chicken)',
                style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const SizedBox(
            width: 75,
          ),
          const Row(
            children: [Folder3AddToCart()],
          )
        ],
      ),
    );
  }
}
