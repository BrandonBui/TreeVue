import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 57, 74, 47),
        shadowColor: Colors.white,
        title: Text(
          "Daily Survey",
          textAlign: TextAlign.center,
          style: GoogleFonts.rufina(
              fontSize: MediaQuery.of(context).size.height / 15),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 4,
      ),
      body: Column(children: []),
    );
  }
}
