import 'package:flutter/material.dart';

class Artists extends StatelessWidget {
  const Artists({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1,
          itemBuilder: (context, index) {
            return  Row(
              children: [ 
              const SizedBox(width: 15,),
               artistAvatar('assets/images/Arijit_singh.jpg'),
               const SizedBox(width: 15,),
               artistAvatar('assets/images/ar.png'),
               const SizedBox(width: 15,),
               artistAvatar('assets/images/darshan.jpg'),
               const SizedBox(width: 15,),
               artistAvatar('assets/images/Mangeshkar.jpg'),      
              ],

            );
          }),
    );
  }

  Column artistAvatar(String assetName) {
    return Column(
      children: [
        CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage(assetName),
        ),
         const SizedBox(height: 8,),
      ],
      );
  }
}


