import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
