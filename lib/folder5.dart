import 'package:f18_first_assignment/folder1_addtocart.dart';
import 'package:f18_first_assignment/folder5_addtcart.dart';
import 'package:flutter/material.dart';

class Folder5 extends StatelessWidget {
  Folder5({
    super.key,
  });
  var circularAvatar =
      'https://images.unsplash.com/photo-1638537125835-82acb38d3531?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHNoYXdhcm1hfGVufDB8fDB8fHww';
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
              Text('Fully Loaded Zinger Parhata'),
              Text(
                '(with olives,jalapeno,meat + cheese)',
                style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const SizedBox(
            width: 62,
          ),
          Row(
            children: [Folder5AddToCart()],
          )
        ],
      ),
    );
  }
}
