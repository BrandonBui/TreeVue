import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:treevue/service.dart';

class homePage extends StatefulWidget {
  const homePage({
    super.key,
  });

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Future SignOut() async {
    await FirebaseAuth.instance.signOut();
  }

  List recommendationsTitle = [
    Text(
      "Ride a bike to your next location",
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.2,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      "Try eating a non-meat based alternative",
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.2,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    @override
    Widget buildCard(int index) => Stack(
          children: [
            /*
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              
              child: Image.network(
                'https://source.unsplash.com/random?sig=$index', //** IMAGE HERE */
                height: 150, //** BOX HEIGHT */
                width: 150, //** BOX WIDTH */
                fit: BoxFit.cover,
              ),
              */
            Center(
                child: SizedBox(
                    height: 150,
                    width: 150,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 13, 61, 24),
                            spreadRadius: 2.0,
                            blurRadius: 4,
                            offset: Offset(0, 3), // Shadow position
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Recommendation description
                            recommendationsTitle[index],

                            Text(
                              //Goal description
                              "Tap to Learn More",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))),
            /*
            ),
            const SizedBox(height: 8),
            Text(goal.goalName), //**IMAGE CAPTION TEXT */

            */
          ],
        );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Container(
                padding: EdgeInsets.all(8),
                width: 300,
                height: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(156, 249, 254, 213),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Text(
                  'Streak: 124 Days!',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Container(
                padding: EdgeInsets.all(8),
                width: 300,
                height: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(156, 249, 254, 213),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Text(
                  'Eco Points: 100',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Container(
                padding: EdgeInsets.all(8),
                width: 300,
                height: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(156, 249, 254, 213),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Text(
                  'Number of Trees Saved: 25',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Recommendations:",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(12),
                    itemBuilder: (context, index) => buildCard(index),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10, //** BETWEEN SPACING */
                      );
                    },
                    itemCount: 2,
                  ),
                )
              ],
            ),
          ),
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
      backgroundColor: Color.fromARGB(255, 125, 154, 113),
    );
  }
}
