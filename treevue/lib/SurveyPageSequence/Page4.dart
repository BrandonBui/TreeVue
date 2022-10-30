import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
