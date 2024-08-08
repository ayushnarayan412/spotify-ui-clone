import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Recent extends StatelessWidget {
  double? width;
   Recent({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.5;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: cardsbuild(
                  'assets/images/logo.png', 'Recently played', width!),
            ),
            Flexible(
              child: cardsbuild(
                  'assets/images/logo.png', 'Recently played', width!),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: cardsbuild(
                  'assets/images/logo.png', 'Recently played', width!),
            ),
            Flexible(
              child: cardsbuild(
                  'assets/images/logo.png', 'Recently played', width!),
            )
          ],
        ),
      ],
    );
  }
}

Card cardsbuild(String img, String txt, double width) {
  return Card(
    
    color: Colors.grey[800],
    child: SizedBox(
      height: 50,
      width: width,
      child: Row(
        children: [
          Image(width: 50, height: 50, image: AssetImage(img)),
          Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: Text(txt))
        ],
      ),
    ),
  );
}
