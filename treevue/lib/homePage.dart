import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:treevue/service.dart';

class homePage extends StatefulWidget {
  const homePage({
    super.key,
  });

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Future SignOut() async {
    await FirebaseAuth.instance.signOut();
  }

  InterstitialAd? interstitialAd;

  void _showInterstitalAd() {
    if (interstitialAd != null) {
      interstitialAd!.fullScreenContentCallback =
          FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _createInterstitialAd();
      }, onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        _createInterstitialAd();
      });
      _createInterstitialAd();
      interstitialAd!.show();
      interstitialAd = null;
    }
  }

  void _createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: AdMobService.interstitialAdUnitId!,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: (ad) => interstitialAd = ad,
            onAdFailedToLoad: (LoadAdError error) => interstitialAd = null));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => SignOut(),
            child: Container(),
          ),
          ElevatedButton(
            onPressed: _showInterstitalAd,
            child: const Text("ad"),
          )
        ],
      ),
      /*
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(156, 235, 241, 194),
              gap: 8,
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.shopping_bag_outlined,
                  text: 'Marketplace',
                ),
                GButton(
                  icon: Icons.playlist_add_check_circle_outlined,
                  text: 'Check-In',
                ),
                GButton(
                  icon: Icons.calendar_month_outlined,
                  text: 'Events',
                ),
              ]),
        ),
      ),
      */
      backgroundColor: Color.fromRGBO(125, 154, 113, 100),
    );
  }
}
