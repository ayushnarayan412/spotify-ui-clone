import 'package:flutter/material.dart';

class LibraryButtons extends StatelessWidget {
  final BoxShape shape;
  final String buttonTitle;
  const LibraryButtons({super.key, required this.shape, required this.buttonTitle,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
          width: 60,
          height: 60,
          child: Container(
            decoration: BoxDecoration(
                shape: shape, color: const Color.fromARGB(255, 62, 61, 61)),
            child: const Icon(
              Icons.add,
              size: 50,
              color: Colors.grey,
            ),
          )),
      title: Text(
        buttonTitle,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      ),
    );
  }
}
