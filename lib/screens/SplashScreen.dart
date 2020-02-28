import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:new_york_times_challenge/screens/OnBoarding.dart';
import 'package:new_york_times_challenge/screens/TopStory.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   /// Check if its the first time for the user to launch the app
//   Function checkFirstSeen = () async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool _seen = (prefs.getBool('seen') ?? false);

//     print('$_seen');
//     if (_seen)
//       return false;
//     else {
//       prefs.setBool('seen', true);
//       return true;
//     }
//   };

//   /// Returned routes according to the checkFirstSeen returned value
//   Map<bool, Widget> op = {
//     false: TopStory(),
//     true: OnBoarding(),
//   };

//   /// Declare startTime to InitState
//   @override
//   void initState() {
//     super.initState();
//     checkFirstSeen();
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: AnimatedSplash(
//         imagePath: 'assets/img/dark.png',
//         home: OnBoarding(),
//         customFunction: checkFirstSeen,
//         duration: 2500,
//         type: AnimatedSplashType.BackgroundProcess,
//         outputAndHome: op,
//       ),
//     );
//   }
// }

Function checkFirstSeen = () async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isIntroScreenOpenedBefore =
      prefs.getBool("isIntroScreenOpened") ?? false;
  print(prefs.containsKey("isIntroScreenOpened"));

  // print('');
  if (isIntroScreenOpenedBefore == true)
    return 1;
  else {
    prefs.setBool('isIntroScreenOpened', true);
    return 2;
  }
};

Function duringSplash = () async {
  print('Something background process');
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int launched = (prefs.getInt('seen') ?? 0);

  print(launched);

  if (launched == 0)
    return 1;
  else
    return 2;
};

/// Returned routes according to the checkFirstSeen returned value
Map<dynamic, Widget> screens = {1: TopStory(), 2: OnBoarding()};

Widget splashScreen = MaterialApp(
  home: AnimatedSplash(
    imagePath: 'assets/img/dark.png',
    home: OnBoarding(),
    customFunction: duringSplash,
    duration: 2500,
    // type: AnimatedSplashType.BackgroundProcess,
    outputAndHome: screens,
  ),
);
