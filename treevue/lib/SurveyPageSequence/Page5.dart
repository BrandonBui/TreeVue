import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 154, 113),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 57, 74, 47),
        elevation: 0,
        title: Text(
          "Fun Fact",
          textAlign: TextAlign.center,
          style: GoogleFonts.rufina(
              fontSize:50),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 4,
        
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: width/10, right:width/10, top: height/20),
            child: Text(
            "Bellevue's 1.4 million trees provide health and economic benefits, increase property values and traffic safety, reduce crime, filter out air pollution, limit stormwater runoff and improve water quality.",
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.white))
            ),
            SizedBox(height: height/14,),
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
                        child: ElevatedButton(onPressed: (){ //needs route back to home page
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page5()));
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
      ),
      
    );
  }
}