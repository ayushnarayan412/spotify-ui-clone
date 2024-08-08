import 'package:flutter/material.dart';

class LibraryDetails extends StatelessWidget {
  final String imagePath;
  final String artistName;
  final String type;
  const LibraryDetails(
      {super.key,
      required this.imagePath,
      required this.artistName,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
          width: 60,
          height: 60,
          child: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          )),
      title: Text(
        artistName,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        type,
        style: const TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}
