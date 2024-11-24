import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(
                'assets/images/restaurant.png',
                color: Colors.amber,
              )),
          const SizedBox(
            width: 15,
          ),
          const Text(
            '𝖪𝖺𝗌𝗁𝗂𝖿 𝖪𝗁𝖺𝗇 𝗆𝖺𝗌𝗁𝗈𝗈𝗋 𝖡𝗎𝗋𝗀𝖾𝗋 𝗐𝖺𝗅𝖺',
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.amber,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
