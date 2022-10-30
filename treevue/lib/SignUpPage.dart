import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp extends StatefulWidget {
  final VoidCallback showLoginPage;
  const signUp({super.key, required this.showLoginPage});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  //text controllers
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  late UserCredential userCreds;
  late User? user;

  /*
  signUp

  This method creates a new user in Firebase using the creatUser method that
  firebase provides. At this moment, this method can only create a user using an
  email and password provided by the user, there is no SSO capabilities yet.
  This method checks that the two passwords entered by the user matches, and
  that the password meets the complexity requirements. In the event of an error,
  the try catch should catch the error's message and assign it to the
  errorMessage variable, allowing it to be displayed to the user.
  */
  Future signUp() async {
    if (passwordConfirmed()) {
      try {
        userCreds = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim());
        user = userCreds.user;
      } on FirebaseAuthException catch (error) {
        //setState is required so that the widget is rebuilt to display the new
        //text.
      }

      //Once user is created, the personal information is stored.
      addUserDetails(_nameController.text.trim(), _emailController.text.trim());
    }
  }

  /*
  addUserDetails

  This method is used to add the user's first, last name, and email into
  Firestore. This method creates a new document using the user's ID number which
  gets created when they sign up. This ensures that the document for each user
  will have different names. This document is created within the users
  collection in Firestore.  The parameters for this method should just take the
  TextEditingControllers associated with each parameter name.

  Update 9/16/2022
  Email field removed since FireAuth instace already stores the email address. 4 
  new fields added: bio, goal count, badge count, and friend count. These are
  just being instantiated with "default" values being assigned to them.

  @param firstName  The user's first name.
  @param lastName   The user's last name.
  @param email      The user's email.
  */
  Future addUserDetails(String name, String email) async {
    await FirebaseFirestore.instance.collection("users").doc(user!.uid).set({
      "real name": name,
    });
  }

  /*
  passwordConfirmed

  This method checks that the two passwords that the user enters matches. The
  method will return true if they match and false if they do not as well as 
  assigning a message to the errorMessage variable to be displayed to the user.

  @return bool  True if passwords match, false if they do not.
  */
  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

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
                      child: Text(
                    "Sign Up",
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
                    Text("Full Name",
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.white)),
                    TextField(
                      controller: _nameController,
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
                    SizedBox(
                      height: height / 30,
                    ),
                    Text("Re-Type Password",
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.white)),
                    TextField(
                      controller: _confirmPasswordController,
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
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Center(
                        child: SizedBox(
                          height: height / 12,
                          width: width / 2,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFCCD0B0),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text(
                                "Create an Account",
                                style: GoogleFonts.rufina(
                                    color: Color(0xFF504F4F)),
                              )),
                        ),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                          onTap: () {},
                          child: Text("LOGIN",
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
