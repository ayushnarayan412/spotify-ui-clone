import 'package:flutter/material.dart';

class AppDrawerButton extends StatelessWidget {
  const AppDrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: SizedBox(
              width: 50,
              height: 30,
              child: Builder(
                builder: (context) => GestureDetector(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: ClipOval(
                      clipper: MyClip(),
                      child:  Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 170, 34, 79)
                      ),
                          child: const Icon(Icons.person)
                
                      )),
                    ))),
            );
  }
}

class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 50, 50);
  }

  @override
  bool shouldReclip(oldClipper) {
    return true;
  }
}