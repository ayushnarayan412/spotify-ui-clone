import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:clone_spotify/Pages/home_page.dart';
import 'package:clone_spotify/Pages/library.dart';
import 'package:clone_spotify/Pages/search.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: AnimatedSplashScreen(
        splash: const Image(
          image: AssetImage('assets/images/l.jpg'),
          fit: BoxFit.contain,
        ),
        nextScreen: const Home(),
        duration: 5000,
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cIndex = 0;
  List<BottomNavigationBarItem> navigationIcons() {
    return [
      BottomNavigationBarItem(
        icon: IconButton(
          icon: const Icon(
            Icons.home,
            size: 30,
          ),
          onPressed: () {
            setState(() {
              cIndex = 0;
            });
          },
        ),
        label: 'Home',
        backgroundColor: Colors.grey,
      ),
      BottomNavigationBarItem(
        icon: IconButton(
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
          onPressed: () {
            setState(() {
              cIndex = 1;
            });
          },
        ),
        label: 'Search',
        backgroundColor: Colors.grey,
      ),
      BottomNavigationBarItem(
          icon: GestureDetector(
        child: const Icon(Icons.library_add,
        size: 30,),
        onTap: () {
          setState(() {
            cIndex = 2;
          });
        },
      ),
      label: 'Library',
      backgroundColor: Colors.grey
      )
    ];
  }

  final pages = [const HomePage(), const Search(), const Library()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          useLegacyColorScheme: false,
          backgroundColor: const Color(0x00ffffff),
          currentIndex: cIndex,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.white,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          iconSize: 20,
          onTap: (int val) {
            cIndex = val;
          },
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: navigationIcons()),
      body: pages[cIndex],
    );
  }
}
