import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treevue/SurveyPageSequence/Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

enum Meats { Chicken, Pork, Beef }
  Meats? _meatType;
class _Page2State extends State<Page2> {
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(unselectedWidgetColor: Colors.white),
      home: Scaffold(
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
        SizedBox(height: height/13),
        
        Column(
          children: [
            Container(
               margin: EdgeInsets.only(left: 30, right: 30),
            child: RadioListTile<Meats>(
                value: Meats.Chicken, 
                contentPadding: EdgeInsets.all(0.0),
                dense: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                ),
                tileColor: Color(0xFF424242),
                activeColor: Colors.white,
                groupValue: _meatType, 
                title: Text(Meats.Chicken.name, style:GoogleFonts.poppins(color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 40)),
                onChanged: ((value) {
                setState(() {
                  _meatType = value;
                  print(_meatType);
                });
              }),
            ),),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
            child:RadioListTile<Meats>(
            value: Meats.Pork, 
            contentPadding: EdgeInsets.all(0.0),
            dense: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
            ),
            tileColor: Color(0xFF424242),
            activeColor: Colors.white,
            groupValue: _meatType, 
            title: Text(Meats.Pork.name,style:GoogleFonts.poppins(color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 40)),
            onChanged: ((value) {
                setState(() {
                  _meatType = value;
                   print(_meatType);
                });
              }),
            )
            ),

             SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
            child:RadioListTile<Meats>(
            value: Meats.Beef, 
            contentPadding: EdgeInsets.all(0.0),
            dense: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
            ),
            tileColor: Color(0xFF424242),
            activeColor: Colors.white,
            groupValue: _meatType, 
            title: Text(Meats.Beef.name,style:GoogleFonts.poppins(color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 40)),
            onChanged: ((value) {
                setState(() {
                  _meatType = value;
                   print(_meatType);
                });
              }),
            )
            ),
          ],
        ),
        SizedBox(height:height/10 ,),
        Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: width/13),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: SizedBox(
                        height: height/20,
                        width: width/3,
                        child: ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFCCD0B0),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                            
                          ),
                        ),
                        child: Text("Previous", style: GoogleFonts.rufina(color: Color(0xFF504F4F)),)
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(left: width/6), 
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: SizedBox(
                        height: height/20,
                        width: width/3,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page3()));
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFCCD0B0),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                            
                          ),
                        ),
                        child: Text("Next", style: GoogleFonts.rufina(color: Color(0xFF504F4F)),)
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
          
      ),
    );
  }
}
