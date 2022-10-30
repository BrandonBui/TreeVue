import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treevue/SurveyPageSequence/Page2.dart';
import 'package:treevue/SurveyPageSequence/Page3.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {

    bool selectedYes = false;

    Color buttonColor1 = Color(0xFF4A503E);
    Color textColor = Color(0xFFFFE8BB);
    Color textColor2 = Color(0xFFBAB653);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

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
              fontSize:50),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 4,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(left: width/10, top: height/15),
          child: Text(
            "Did you meat today?",
            style: GoogleFonts.poppins(fontSize: 25, color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: (){
                           selectedYes = true;
                        }, 
                        child: Text("YES", style: GoogleFonts.poppins(
                                            color: Color(0xFFFFE8BB),
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),textAlign: TextAlign.center,),
                        style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0), bottomLeft: Radius.circular(18.0)),
                                      side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))
                                      )
                                  ),
                                  backgroundColor: MaterialStateProperty.all<Color>(buttonColor1,
                        )
              
                              ),
                              )
                              ),
              
                              SizedBox(
                        width: 150,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: (){
                           selectedYes = false;
                        }, 
                        child: Text("NO", style: GoogleFonts.poppins(
                                            color: Color(0xFFFFE8BB),
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),textAlign: TextAlign.center,
                                    ),
                        style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(18.0), bottomRight: Radius.circular(18.0)),
                                      side: BorderSide(color: Color.fromARGB(255, 5, 5, 5))
                                      )
                                  ),
                                  backgroundColor: MaterialStateProperty.all<Color>(buttonColor1,
                                  )
                          
                        ),
                        )
                        ),
                      ],
                  ),
                ),
              )],
      ),
      
          
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: SizedBox(
                  height: height/12,
                  width: width/2,
                  child: ElevatedButton(onPressed: (){
                    print(selectedYes);
                    if (selectedYes == true){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2()));
                    } else{
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page3()));
                    }
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
          
      ],
        ),
      );
  }
}
