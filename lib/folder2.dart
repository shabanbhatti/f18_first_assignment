import 'package:f18_first_assignment/folder1_addtocart.dart';
import 'package:f18_first_assignment/folder2_addtoCart.dart';
import 'package:flutter/material.dart';

class Folder2 extends StatelessWidget {
  Folder2({
    super.key,
  });
  var circularAvatar =
      'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YnVyZ2VyfGVufDB8fDB8fHww';
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
              Text('Kabab loaded Zinger Burger'),
              Text(
                '(with olives,jalapeno,cheese slice + Kabab)',
                style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          const Row(
            children: [Folder2AddToCart()],
          )
        ],
      ),
    );
  }
}
