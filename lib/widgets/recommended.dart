import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Recommended extends StatelessWidget {
  int itemCount;
  String imagePath;
  String name;

  Recommended({super.key, required this.itemCount, required this.imagePath,required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              recommCard(
                imagePath,name
              ),
              const SizedBox(
                width: 12,
              ),
            ],
          );
        },
      ),
    );
  }

  Column recommCard(String assetName,String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: 150,
          height: 150,
          image: AssetImage(assetName),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
