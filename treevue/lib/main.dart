import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:treevue/SurveyPageSequence/Page1.dart';

import 'package:treevue/SurveyPage.dart';
import 'package:treevue/Onbording.dart';

import 'package:treevue/SurveyPage.dart';
import 'package:treevue/Onbording.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //await Firebase.initializeApp();

  runApp(const MyApp()); //changed the const
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/Onbording",
      routes: {
        "/Onbording": (context) => Onbording(),
        "/SurveyPage": (context) => SurveyPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
