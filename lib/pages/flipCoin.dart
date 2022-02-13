// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:coin_app/assets.dart';
import 'package:flutter/rendering.dart';

//TOSS FUNCTION
bool isHeads = false;
bool isTails = false;

Future<void> doToss() async {
  Random random = new Random();
  int number = random.nextInt(50);
  if (number % 2 == 0) {
    isHeads = true;
    isTails = false;
  } else {
    isTails = true;
    isHeads = false;
  }
}

class FlipCoin extends StatefulWidget {
  const FlipCoin({Key? key}) : super(key: key);

  @override
  _FlipCoinState createState() => _FlipCoinState();
}

Color btn1Clr = Colors.transparent;
Color btn2Clr = Colors.transparent;

String flipSign = "'";

class _FlipCoinState extends State<FlipCoin> {
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

  late Timer _timer;

  _FlipCoinState() {
    _timer = new Timer(Duration(seconds: 3), () {
      setState(() {
        doToss();
        if (isHeads) {
          tossResult = 'H E A D S';
        } else {
          tossResult = 'T A I L S';
        }
      });
    });
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
              SizedBox(height: 100),
              Expanded(flex: 3, child: CoinAnimation()),
              SizedBox(height: 120),
              Flexible(
                flex: 4,
                child: ElevatedButton(
                  onPressed: () => setState(() {
                    tossResult = 'Please Wait';
                    _timer = new Timer(Duration(seconds: 3), () {
                      setState(() {
                        doToss();
                        if (isHeads) {
                          tossResult = 'H E A D S';
                        } else {
                          tossResult = 'T A I L S';
                        }
                      });
                    });
                  }),
                  child: Text(
                    'Try Again'.toUpperCase(),
                    style: TextStyle(
                      color: myYellow,
                      fontFamily: sandBold,
                      fontSize: 25,
                      letterSpacing: 1,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                    primary: lightBlue,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                flex: 4,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/store');
                  },
                  child: Text(
                    '     Finish   '.toUpperCase(),
                    style: TextStyle(
                      color: myYellow,
                      fontFamily: sandBold,
                      fontSize: 25,
                      letterSpacing: 1,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(40, 30, 50, 30),
                    primary: lightBlue,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
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
  int click = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      //color: lightBlue,
      duration: Duration(milliseconds: 500),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              tossResult,
              style: TextStyle(
                fontFamily: sandBold,
                fontSize: 50,
                color: myYellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
