import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Future SignOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => SignOut(),
            child: Container(),
          )
        ],
      ),
      /*
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(156, 235, 241, 194),
              gap: 8,
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.shopping_bag_outlined,
                  text: 'Marketplace',
                ),
                GButton(
                  icon: Icons.playlist_add_check_circle_outlined,
                  text: 'Check-In',
                ),
                GButton(
                  icon: Icons.calendar_month_outlined,
                  text: 'Events',
                ),
              ]),
        ),
      ),
      */
      backgroundColor: Color.fromRGBO(125, 154, 113, 100),
    );
  }
}
