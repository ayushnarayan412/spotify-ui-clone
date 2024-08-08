import 'package:clone_spotify/widgets/app_drawer.dart';
import 'package:clone_spotify/widgets/artists.dart';
import 'package:clone_spotify/widgets/app_drawer_button.dart';
import 'package:clone_spotify/widgets/recent.dart';
import 'package:clone_spotify/widgets/recommended.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        
          title: const Text('Home'),
          backgroundColor: Colors.black,
          leading:const AppDrawerButton()
          ),
                  
                  
      drawer: const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(5.0, 0, 0.0, 0),
        decoration: backgroundColors(),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Recent(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Recommended for today',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Recommended(
                  itemCount: 10,
                  imagePath: 'assets/images/arjit.jpeg',
                  name: 'Arjit Singh',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Your favourite artists',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Artists(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Your top mixes',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Recommended(
                  itemCount: 10,
                  imagePath: 'assets/images/honey.jpg',
                  name: "Honey singh",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration backgroundColors() {
    return const BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.transparent,
        Color.fromARGB(255, 65, 43, 69),
        Colors.black
      ], begin: Alignment.topLeft, end: Alignment.bottomCenter),
    );
  }
}


