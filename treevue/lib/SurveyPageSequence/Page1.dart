import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treevue/SurveyPageSequence/Page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 154, 113),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 57, 74, 47),
        elevation: 0,
        title: Text(
          "Daily Survey",
          textAlign: TextAlign.center,
          style: GoogleFonts.rufina(
              fontSize: MediaQuery.of(context).size.height / 15),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 4,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Did you meat today?",
            style: GoogleFonts.poppins(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                width: 125,
                child: ElevatedButton(
                  child: Text(
                    "Yes",
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Page2();
                    }));
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 125,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: ElevatedButton(
                  child: Text("No", style: GoogleFonts.poppins(fontSize: 40)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Page2();
                    }));
                  },
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
