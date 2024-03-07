import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(child:
                Icon(Icons.favorite, size: 100, color: Theme.of(context).colorScheme.inversePrimary,),
              ),
              const SizedBox(height: 30),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("H O M E"),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/home');
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("P R O F I L E"),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/profile_page');
                },
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text("U S E R S"),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/users_page');
                },
              ),
            ]
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: (){
                FirebaseAuth.instance.signOut();
              },
            )
          )
        ],
      )
    );
  }
}