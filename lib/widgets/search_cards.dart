import 'package:flutter/material.dart';
import 'dart:math' as math;

class SearchCards extends StatelessWidget {
  const SearchCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardGenre(
                genre: 'Music', assetName: 'assets/images/Arijit_singh.jpg'),
            CardGenre(genre: 'Party', assetName: 'assets/images/honey.jpg'),
          ],
        )
      ],
    );
  }
}

class CardGenre extends StatelessWidget {
  final String genre;
  final String assetName;
  const CardGenre({super.key, required this.genre, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Newpage()));
      },
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                  colors: [Colors.pink, Colors.purple],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    child: Text(
                      genre,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Transform.rotate(
                angle: math.pi * 0.15,
                child: Image(
                  image: AssetImage(assetName),
                  height: 60,
                  width: 70,
                  alignment: AlignmentDirectional.bottomEnd,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Newpage extends StatelessWidget {
  const Newpage
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music playlist'),),
    );
  }
}
