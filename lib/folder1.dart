import 'package:f18_first_assignment/folder1_addtocart.dart';
import 'package:flutter/material.dart';

class Folder1 extends StatelessWidget {
  Folder1({
    super.key,
  });
  
  var circularAvatar =
      'https://images.unsplash.com/photo-1508736793122-f516e3ba5569?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJ1cmdlcnxlbnwwfHwwfHx8MA%3D%3D';
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
              Text('Cheese Zinger Burger'),
              Text(
                '(with olives & jalapeno)',
                style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          const Row(
            children: [Folder1AddToCart()],
          ),
         
        ],
      ),
    );
  }
}
