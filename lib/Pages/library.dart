import 'package:clone_spotify/widgets/app_drawer.dart';
import 'package:clone_spotify/widgets/app_drawer_button.dart';
import 'package:clone_spotify/widgets/library_buttons.dart';
import 'package:clone_spotify/widgets/library_details.dart';
import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Column(
          children: [
            const Row(
              children: [
                AppDrawerButton(),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Your Library',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    height: 25,
                    width: 70,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor:
                              const Color.fromARGB(255, 35, 34, 34),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Playlists',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )),
                    )),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                    height: 25,
                    width: 60,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor:
                              const Color.fromARGB(255, 35, 34, 34),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Artists',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )),
                    )),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
      drawer: const AppDrawer(),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.transparent,
          Color.fromARGB(255, 65, 43, 69),
          Colors.black
        ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
        child: ListView(
          children: const [
            SizedBox(
              height: 10,
            ),
            LibraryDetails(
              imagePath: 'assets/images/Arijit_singh.jpg',
              artistName: 'Arjit Singh',
              type: 'Artist',
            ),
            SizedBox(
              height: 10,
            ),
            LibraryDetails(
              imagePath: 'assets/images/honey.jpg',
              artistName: 'Yo Yo Honey Singh',
              type: 'Artist',
            ),
            SizedBox(
              height: 10,
            ),
            LibraryDetails(
              imagePath: 'assets/images/darshan.jpg',
              artistName: 'Darshan Raval',
              type: 'Artist',
            ),
            SizedBox(
              height: 10,
            ),
            LibraryButtons(
              shape: BoxShape.circle,
              buttonTitle: 'Add artists',
            ),
            SizedBox(
              height: 20,
            ),
            LibraryButtons(
              shape: BoxShape.rectangle,
              buttonTitle: 'Add podcasts',
            )
          ],
        ),
      ),
    );
  }
}
