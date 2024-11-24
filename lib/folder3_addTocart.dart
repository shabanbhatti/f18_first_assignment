import 'package:f18_first_assignment/folder1.dart';
import 'package:flutter/material.dart';

class Folder3AddToCart extends StatefulWidget {
  const Folder3AddToCart({
    super.key,
  });

  @override
  State<Folder3AddToCart> createState() => _Folder3AddToCartState();
}

class _Folder3AddToCartState extends State<Folder3AddToCart> {
  int number = 1;
  int price = 170;
  String plus = '+';

  String minus = '–';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (number > 1) {
                    number = number - 1;
                    price = price - 170;
                  }
                });
              },
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  // ------------
                  minus,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              number.toString(),
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
            const SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (number >= 1 && number < 12) {
                    number = number + 1;
                    price = price + 170;
                  }
                });
              },
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  // -------------
                  plus,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('RS'),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  price.toString(),
                  style: const TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
