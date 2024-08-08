import 'package:clone_spotify/Pages/profile_page.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Drawer(
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child:  SizedBox(
                  height: 90,
                  child: DrawerHeader(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 185, 54, 97),
                      shape: BoxShape.circle,
                    ),
                    child:const Icon(Icons.person,size: 30,)
                  ),
                      const SizedBox(width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Ayush',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'View profile',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w300),
                          )
                        ],
                      )
                    ],
                  )),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: const Text(
                  'Add account',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.bolt_outlined),
                title: const Text(
                  "Whats's new",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.access_time_outlined),
                title: const Text(
                  'Listening history',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: const Text(
                  'Settings and Privacy',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
