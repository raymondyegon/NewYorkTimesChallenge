import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_york_times_challenge/screens/TopStory.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

var _fontHeaderStyle = GoogleFonts.notoSerif(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
  color: Colors.white,
);

var _fontDescriptionStyle = GoogleFonts.poppins(
  fontSize: 14,
  color: Colors.white,
);

class _OnBoardingState extends State<OnBoarding> {
  ///Create a list of PageModel to be set on the onBoarding Screen
  final pageList = [
    PageModel(
      color: const Color(0xFF678FB4),
      heroAssetPath: 'assets/img/light.png',
      title: Text(
        'Time For More Stories',
        style: _fontHeaderStyle,
      ),
      body: Text(
        'Read More Interesting Stories',
        style: _fontDescriptionStyle,
      ),
      iconAssetPath: 'assets/img/dark.png',
    ),
    PageModel(
      color: const Color(0xFF65B0B4),
      heroAssetPath: 'assets/img/light.png',
      title: Text(
        'Time For More Podcasts',
        style: _fontHeaderStyle,
      ),
      body: Text(
        'Listen to more exclusive podcasts',
        style: _fontDescriptionStyle,
      ),
      iconAssetPath: 'assets/img/dark.png',
    ),
    PageModel(
      color: const Color(0xFF9B90BC),
      heroAssetPath: 'assets/img/light.png',
      title: Text(
        'Time For More Crosswords',
        style: _fontHeaderStyle,
      ),
      body: Text(
        'Play the Mini Crossword',
        style: _fontDescriptionStyle,
      ),
      iconAssetPath: 'assets/img/dark.png',
    ),
    PageModel(
      color: const Color(0xFF9B90BC),
      heroAssetPath: 'assets/img/light.png',
      title: Text(
        'Time For More Discussions',
        style: _fontHeaderStyle,
      ),
      body: Text(
        'Join the interesting discussions',
        style: _fontDescriptionStyle,
      ),
      iconAssetPath: 'assets/img/light.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        onDoneButtonPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TopStory(),
          ),
        ),
        onSkipButtonPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TopStory(),
          ),
        ),
      ),
    );
  }
}
