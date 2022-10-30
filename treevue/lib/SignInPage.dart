import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signIn extends StatelessWidget {
  const signIn({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; 
    double height = MediaQuery.of(context).size.height; 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 116, 143, 104),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Center(
                  child: SafeArea(
                    child: Text("Sign In", style: GoogleFonts.rufina( fontSize: 40, color: Colors.white) , )
                    ),
                ),
              ),
        
              Padding(
                padding: EdgeInsets.only(left: width/10, right: width/10, top: height/20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    SizedBox(height: height/30,),
                    Text("Email", style: GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white,)
                        ),
                        focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                     ),  
                        
                      ),
                    ),
                    SizedBox(height: height/30,),
                    Text("Password", style: GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white,)
                        ),
                        focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                     ),  
                        
                      ),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.only(top: height/5),
                      child: Center(
                        child: SizedBox(
                          height: height/12,
                          width: width/2,
                          child: ElevatedButton(onPressed: (){}, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFCCD0B0),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                             
                            ),
                          ),
                          child: Text("Create an Account", style: GoogleFonts.rufina(color: Color(0xFF504F4F)),)
                          ),
                        ),
                      ),
                    ), 
                    Center(child: Padding(
                      padding: EdgeInsets.only(top:height/10),
                      child: GestureDetector(onTap: (){}, child: Text("LOGIN", style: GoogleFonts.rufina(color: Colors.white) )),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
