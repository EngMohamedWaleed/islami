import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/taps/ahadeth.dart';
import 'package:islami/home/taps/quran.dart';
import 'package:islami/home/taps/radio.dart';
import 'package:islami/home/taps/sebha.dart';
import 'package:islami/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

//devlmgmll
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: MyThemeData.colorgold,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: 'Quran',
                  backgroundColor: MyThemeData.colorgold),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                  label: 'Ahadeth'),
            ],
          ),
          body: taps[currentIndex],
        ),
      ],
    );
  }

  List<Widget> taps = [
    QuranScreen(),
    RadioScreen(),
    SebhaScreen(),
    AhadethScreen()
  ];
}
