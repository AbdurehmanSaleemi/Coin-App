// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:coin_app/assets.dart';

int globalTime = 0;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

String loading = 'LOADING';

class _SplashScreenState extends State<SplashScreen> {
  late Timer splashTimer;

  _SplashScreenState() {
    splashTimer = new Timer(Duration(milliseconds: 3500), () {
      Navigator.pushReplacementNamed(context, '/store');
    });
  }

  @override
  void dispose() {
    super.dispose();
    splashTimer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Flexible(
              child: Text(
                'Flip a coin'.toUpperCase(),
                style: TextStyle(
                  fontFamily: sandBold,
                  color: myYellow,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: Text(
                loading.toUpperCase(),
                style: TextStyle(
                  fontFamily: sandReg,
                  color: myYellow,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Loading1(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Loading1 extends StatefulWidget {
  @override
  _Loading1State createState() => _Loading1State();
}

class _Loading1State extends State<Loading1> {
  late Timer _timer;
  late Timer _timer1;
  late Timer _timer3;
  String dot = '';

  _Loading1State() {
    _timer = new Timer(Duration(seconds: 1), () {
      setState(() {
        dot = '.';
      });
    });
    _timer1 = new Timer(Duration(seconds: 2), () {
      setState(() {
        dot = dot + '.';
      });
    });
    _timer3 = new Timer(Duration(seconds: 3), () {
      setState(() {
        dot = dot + '.';
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dot,
            style: TextStyle(
              color: myYellow,
              fontSize: 20,
              fontFamily: sandBold,
            ),
          ),
        ],
      ),
    );
  }
}

class Loading2 extends StatefulWidget {
  const Loading2({Key? key}) : super(key: key);

  @override
  _Loading2State createState() => _Loading2State();
}

class _Loading2State extends State<Loading2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
