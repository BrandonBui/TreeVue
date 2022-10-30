import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

enum Meats { Chicken, Pork, Beef }
class _Page2State extends State<Page2> {
  
  @override
  Widget build(BuildContext context) {
  Meats? _type = Meats.Chicken;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 154, 113),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 57, 74, 47),
        title: Text(
          "Daily Survey",
          textAlign: TextAlign.center,
          style: GoogleFonts.rufina(
              fontSize: MediaQuery.of(context).size.height / 15),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 4,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(left: width/10, top: height/15),
          child: Text(
            "If yes, what kind?",
            style: GoogleFonts.poppins(fontSize: 25, color: Color.fromARGB(255, 255, 255, 255)),
            textAlign: TextAlign.left,
          ),
        ),
      Column(
      children: <Widget>[
        ListTile(
          title: const Text('Chicken'),
          leading: Radio<Meats>(
            value: Meats.Chicken,
            groupValue: _type,
            onChanged: (Meats ? value) {
              setState(() {
                _type = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Beef'),
          leading: Radio<Meats>(
            value: Meats.Beef,
            groupValue: _type,
            onChanged: (Meats? value) {
              setState(() {
                _type = value;
              });
            },
          ),
        ),
      ],
    )
      ]
        ),
    );
  }
}
