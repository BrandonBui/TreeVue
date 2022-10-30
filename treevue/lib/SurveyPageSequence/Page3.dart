import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treevue/SurveyPageSequence/Page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Color buttonColor1 = Color(0xFF4A503E);
    Color textColor = Color(0xFFFFE8BB);
    Color textColor2 = Color(0xFFBAB653);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 154, 113),
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            "Did you use a form of zero emission transportation?",
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
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
      
      SizedBox(height: height/15),
          
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page4()));
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
          
      ],
    ));
  }
}
