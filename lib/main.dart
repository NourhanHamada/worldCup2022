import 'package:flutter/material.dart';
import 'package:worldcup2022/model/big_button.dart';
import 'package:worldcup2022/view/home_screen.dart';
import 'package:worldcup2022/view/match_screen.dart';
import 'package:worldcup2022/view/news_details_screen.dart';
import 'package:worldcup2022/view/news_screen.dart';
import 'package:worldcup2022/view/profile_screen.dart';
import 'package:worldcup2022/view/results_screen.dart';
import 'view/start_screen.dart';
import 'package:worldcup2022/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/first' : (context) => const StartScreen(),
        '/home' : (context) => const HomeScreen(),
        '/match' : (context) => const MatchScreen(),
        '/news' : (context) => const NewsScreen(),
        '/results' : (context) =>  ResultsScreen(),
        '/newsDetails' : (context) => const NewsDetailsScreen(),
        '/profile' : (context) => const ProfileScreen(),

      },
      debugShowCheckedModeBanner: false,
      title: 'World Cup 2022',
      theme: ThemeData(
        fontFamily: 'IbmPlexSans',
        textTheme: TextTheme(

        )
      ),
      home: HomeScreen(),
    );
  }
}