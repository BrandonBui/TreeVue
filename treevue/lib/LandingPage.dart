import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 154, 113),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  "TreeVue",
                  style: GoogleFonts.rufina(color: Colors.white, fontSize: 69),
                ),
                Text(
                  "You contribute to tree canopy loss in more ways than you think.",
                  style: GoogleFonts.rufina(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset("images/Tree1.svg")
              ],
            ),
          )
        ],
      ),
    );
  }
}
