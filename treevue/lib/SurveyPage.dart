import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({super.key});

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //#### Column of TextFormFields ####
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //#### Smoking question ####
            const Text("Did you smoke today? If so how much?"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF3F6F8),
                    border: Border.all(
                      color: Color(0xFFD9E0E6),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width * .75,
                height: 50,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    border: InputBorder.none,
                    hintText: "Hint Text",
                  ),
                ),
              ),
            ),
            //#### Did you use plastic bags? ####
            const Text("Did you use plastic bag(s) today?"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF3F6F8),
                    border: Border.all(
                      color: Color(0xFFD9E0E6),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width * .75,
                height: 50,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    border: InputBorder.none,
                    hintText: "Hint Text",
                  ),
                ),
              ),
            ),
            //#### Driving question ####
            const Text("How many miles did you drive today?"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF3F6F8),
                    border: Border.all(
                      color: Color(0xFFD9E0E6),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width * .75,
                height: 50,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    border: InputBorder.none,
                    hintText: "Hint Text",
                  ),
                ),
              ),
            ),
            //#### Meat question ####
            const Text("Did you eat meat today?"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF3F6F8),
                    border: Border.all(
                      color: Color(0xFFD9E0E6),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width * .75,
                height: 50,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    border: InputBorder.none,
                    hintText: "Hint Text",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
