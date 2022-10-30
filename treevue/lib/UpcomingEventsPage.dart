import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingEventsPage extends StatefulWidget {
  const UpcomingEventsPage({super.key});

  @override
  State<UpcomingEventsPage> createState() => _UpcomingEventsPageState();
}
 String _filter = "Upcoming";
  String _svgPath = 'lib/Svg/filter.svg';
  bool _tapped = false;
  List<String> images = ['lib/images/treePlanting.jpg','lib/images/happyFamily.jpg'];
  List<String> title = ["300 Trees", "Trees for Seattle"];
  List <String> info = ["Need 20 volunteers to help plant and water trees from 2-5 PM on June 3rd 2023 in Bellevue downtown", "Want to attend a fun family event to learn more about trees? Join us at Seattle in Kerry Park on July 9th 2023, 1-3 PM"];
  List <String> coins = ["150", "200", "250", "250"];

 Widget buildCard (int index) => Container(
    width: 100,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
      Radius.circular(12.0),
    ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(images[index])
            )
          ),
        Container(
          child: Expanded(
            child: Container(
              margin: EdgeInsets.only(left:10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left:5.0, top: 10.0),
                    child: Text(title[index], style: GoogleFonts.poppins(
                        fontSize:20, color: Colors.black, fontWeight: FontWeight.w600),),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text(info[index], style:GoogleFonts.poppins(
                        fontSize:10, color: Colors.black, fontWeight: FontWeight.normal) ,),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                     decoration: const BoxDecoration(
                      color: Color(0xFF394733),
                      borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Text("Earn " + coins[index], style:GoogleFonts.poppins(
                          fontSize:14, color: Colors.white, fontWeight: FontWeight.w400)),
                          SizedBox(width: 10.0,),
                          SvgPicture.asset('lib/Svg/coins.svg')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    )
  );
class _UpcomingEventsPageState extends State<UpcomingEventsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 154, 113),
      body: Center(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: height/15 ),
                child: Text("Events", style:  GoogleFonts.rufina(
                  fontSize:50, color: Colors.white)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: width/14, top: height/20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(_filter, style:GoogleFonts.poppins(
                    fontSize:15, color: Colors.white),),
                    SizedBox(width: width/30,),
                  GestureDetector(
                    child: SvgPicture.asset(_svgPath),
                    onTap: () { //implement later
                    },
                    ),

                  
                ],
              ),
            ),
            Expanded(
              
              child: SizedBox(
                width: width/1.2,
                child: ListView.separated(
                  itemBuilder: (context, index){
                        print(images[index]);
                    return buildCard(index);
                    }, 
                separatorBuilder: (context, index) {
                return SizedBox(height: 12);
                }, 
                itemCount:images.length,
                ),
              ),
            ),
            
            ])
      ),
        );
  }
}
