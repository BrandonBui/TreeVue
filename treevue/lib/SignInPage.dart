import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signIn extends StatefulWidget {
  final VoidCallback showSignupPage;
  const signIn({super.key, required this.showSignupPage});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException catch (error) {
      /*
      if (error.code == 'user-not-found') {
        setState(() {
          errorMessage = "No user found for that email.";
        });
      } else if (error.code == 'wrong-password' ||
          error.code == "invalid-email") {
        setState(() {
          errorMessage = "Incorrect email or password";
        });
      } else if (error.code == "user-disabled") {
        setState(() {
          errorMessage = "This account has been disabled";
        });
      }
      */
    }
  }

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
                      child: Text(
                    "Sign In",
                    style:
                        GoogleFonts.rufina(fontSize: 40, color: Colors.white),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width / 10, right: width / 10, top: height / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height / 30,
                    ),
                    Text("Email",
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.white)),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                          color: Colors.white,
                        )),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    Text("Password",
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.white)),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                          color: Colors.white,
                        )),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height / 5),
                      child: Center(
                        child: SizedBox(
                          height: height / 12,
                          width: width / 2,
                          child: ElevatedButton(
                              onPressed: () {
                                signIn();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFCCD0B0),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: GoogleFonts.rufina(
                                    color: Color(0xFF504F4F)),
                              )),
                        ),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: height / 10),
                      child: GestureDetector(
                          onTap: () {},
                          child: Text("Create an Account",
                              style: GoogleFonts.rufina(color: Colors.white))),
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
