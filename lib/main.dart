import 'package:flutter/material.dart';
import 'package:coin_app/pages/splashScreen.dart';
import 'package:coin_app/pages/chooseSides.dart';
import 'package:coin_app/pages/flipCoin.dart';
import 'package:coin_app/pages/showResult.dart';
import 'package:coin_app/pages/storeData.dart';
import 'package:coin_app/pages/coinSides.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashScreen(),
      '/store': (context) => const StoreData(),
      '/sides': (context) => const ChooseSides(),
      '/coinSides': (context) => const SelectCoinSides(),
      '/coin': (context) => const FlipCoin(),
      '/result': (context) => const ShowResult(),
    },
  ));
}
