// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:coin_app/assets.dart';
import 'package:flutter/rendering.dart';

class FlipCoin extends StatefulWidget {
  const FlipCoin({Key? key}) : super(key: key);

  @override
  _FlipCoinState createState() => _FlipCoinState();
}

Color btn1Clr = Colors.transparent;
Color btn2Clr = Colors.transparent;

String flipSign = "'";

class _FlipCoinState extends State<FlipCoin> {
  @override
  void dispose() {
    super.dispose();
  }

  Widget logoPrint() {
    return Text(
      'Flip a coin'.toUpperCase(),
      style: TextStyle(
        fontFamily: sandBold,
        color: myYellow,
        fontSize: 40,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: myBlue,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150 / 2,
              ),
              logoPrint(),
              const SizedBox(
                height: 100 / 2,
              ),
              Flexible(
                flex: 1,
                child: Text(
                  'FLIPPIN${flipSign} YOUR COIN\n',
                  style: TextStyle(
                    fontFamily: sandReg,
                    color: myYellow,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 100 / 2,
              ),
              CoinAnimation(),
            ],
          ),
        ),
      ),
    );
  }
}

class CoinAnimation extends StatefulWidget {
  const CoinAnimation({Key? key}) : super(key: key);

  @override
  _CoinAnimationState createState() => _CoinAnimationState();
}

class _CoinAnimationState extends State<CoinAnimation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: Image.asset('assets/coin/tails.png'),
      ),
    );
  }
}
