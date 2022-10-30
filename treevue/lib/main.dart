import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:treevue/MarketplacePage.dart';
import 'package:treevue/SignInPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:treevue/SurveyPageSequence/Page1.dart';
import 'package:treevue/SurveyStartPage.dart';
import 'package:treevue/UpcomingEventsPage.dart';
import 'package:treevue/homePage.dart';
import 'package:treevue/main_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:treevue/service.dart';

import 'package:treevue/Onbording.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDioZdvo1sXePiohQPfmNZEEdXdvIEFPaU",
      appId: "1:629429638564:android:d026b59c2c8ef18c4d9d31",
      messagingSenderId: "629429638564",
      projectId: "treehackathon",
    ),
  );

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
        "/Page1": (context) => Page1(),
        "/MainPage": (context) => MainPage(),
        "/HomePage": (context) => HomePage()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  InterstitialAd? interstitialAd;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    );

    _createInterstitialAd();
    //controller.repeat();
  }

  void _createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: AdMobService.interstitialAdUnitId!,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: (ad) => interstitialAd = ad,
            onAdFailedToLoad: (LoadAdError error) => interstitialAd = null));
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int _currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  final _bottomNavBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
        label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        label: 'Marketplace'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.playlist_add_check_circle_outlined,
          color: Colors.black,
        ),
        label: 'Check-in'),
    const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(),
          child: Icon(
            Icons.calendar_month_outlined,
            color: Colors.black,
          ),
        ),
        label: 'Events'),
  ];
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,
        onPageChanged: ((newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        }),
        children: [
          homePage(),
          MarketplacePage(),
          SurveyStartPage(),
          UpcomingEventsPage()
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(200)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              items: _bottomNavBarItems,
              showUnselectedLabels: false,
              fixedColor: Colors.black,
              selectedIconTheme:
                  IconThemeData(color: Color.fromARGB(255, 130, 112, 230)),
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeIn);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}



//##########

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    );

    //controller.repeat();
  }

  PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  final _bottomNavBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
        label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        label: 'Marketplace'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.playlist_add_check_circle_outlined,
          color: Colors.white,
        ),
        label: 'Check-in'),
    const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(),
          child: Icon(
            Icons.calendar_month_outlined,
            color: Colors.black,
          ),
        ),
        label: 'Events'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: ((newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        }),
        children: [
          homePage(),
          MarketplacePage(),
          SurveyStartPage(),
          UpcomingEventsPage()
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 130, 112, 230),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 8)),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(200)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              items: _bottomNavBarItems,
              showUnselectedLabels: false,
              fixedColor: Color.fromARGB(255, 130, 112, 230),
              selectedIconTheme:
                  IconThemeData(color: Color.fromARGB(255, 130, 112, 230)),
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeIn);
                });
              },
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/