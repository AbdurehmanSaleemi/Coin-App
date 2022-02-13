// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:coin_app/assets.dart';
import 'package:flutter/rendering.dart';

class ChooseSides extends StatefulWidget {
  const ChooseSides({Key? key}) : super(key: key);

  @override
  _ChooseSidesState createState() => _ChooseSidesState();
}

Color btn1Clr = Colors.transparent;
Color btn2Clr = Colors.transparent;

class _ChooseSidesState extends State<ChooseSides> {
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
                  'WHO IS GOING TO CHOOSE \n THE SIDE FIRST',
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
              Flexible(flex: 1, child: ElevatedBtn(btnName: nameOfPlayerOne)),
              const SizedBox(
                height: 50 / 2,
              ),
              Flexible(flex: 1, child: ElevatedBtn2(btnName: nameOfPlayerTwo)),
              const SizedBox(
                height: 190 / 2,
              ),
              btnConfirm(context: context, btnName: '   DONE   '),
            ],
          ),
        ),
      ),
    );
  }
}

class btnConfirm extends StatefulWidget {
  const btnConfirm({
    Key? key,
    required this.context,
    required this.btnName,
  }) : super(key: key);

  final BuildContext context;
  final btnName;

  @override
  State<btnConfirm> createState() => _btnConfirmState();
}

class _btnConfirmState extends State<btnConfirm> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: ElevatedButton(
        onPressed: () {
          if (isPressed) {
            print(playerOneSelected);
            print(playerTwoSelected);
            Navigator.pushNamed(context, '/coinSides');
          }
        },
        child: Text(
          widget.btnName.toUpperCase(),
          style: TextStyle(
            color: myYellow,
            fontFamily: sandBold,
            fontSize: 25,
            letterSpacing: 1,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(80, 30, 90, 30),
          primary: lightBlue,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class ElevatedBtn extends StatefulWidget {
  ElevatedBtn({required this.btnName});

  final String btnName;

  @override
  _ElevatedBtnState createState() => _ElevatedBtnState();
}

class _ElevatedBtnState extends State<ElevatedBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (!isPressed) {
              btn1Clr = myYellow;
              isPressed = true;
              playerOneSelected = true;
              playerTwoSelected = false;
            } else if (isPressed && playerOneSelected) {
              isPressed = false;
              btn1Clr = Colors.transparent;
            }
          });
        },
        child: Text(
          widget.btnName.toUpperCase(),
          style: TextStyle(
            color: myYellow,
            fontFamily: sandBold,
            fontSize: 25,
            letterSpacing: 1,
          ),
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: btn1Clr,
            width: 2,
          ),
          padding: const EdgeInsets.fromLTRB(80, 30, 90, 30),
          primary: lightBlue,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class ElevatedBtn2 extends StatefulWidget {
  ElevatedBtn2({required this.btnName});

  final String btnName;

  @override
  _ElevatedBtnState2 createState() => _ElevatedBtnState2();
}

class _ElevatedBtnState2 extends State<ElevatedBtn2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (!isPressed) {
              btn2Clr = myYellow;
              isPressed = true;
              playerOneSelected = false;
              playerTwoSelected = true;
            } else if (isPressed && playerTwoSelected) {
              btn2Clr = Colors.transparent;
              isPressed = false;
            }
          });
        },
        child: Text(
          widget.btnName.toUpperCase(),
          style: TextStyle(
            color: myYellow,
            fontFamily: sandBold,
            fontSize: 25,
            letterSpacing: 1,
          ),
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: btn2Clr,
            width: 2,
          ),
          padding: const EdgeInsets.fromLTRB(80, 30, 90, 30),
          primary: lightBlue,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
