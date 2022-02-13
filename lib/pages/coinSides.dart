// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:coin_app/assets.dart';
import 'package:flutter/rendering.dart';

class SelectCoinSides extends StatefulWidget {
  const SelectCoinSides({Key? key}) : super(key: key);

  @override
  _SelectCoinSidesState createState() => _SelectCoinSidesState();
}

Color btn1Clr = Colors.transparent;
Color btn2Clr = Colors.transparent;

class _SelectCoinSidesState extends State<SelectCoinSides> {
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
                  'SELECT YOUR SIDES\n',
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
              Flexible(flex: 1, child: ElevatedBtn(btnName: 'HEADS')),
              const SizedBox(
                height: 50 / 2,
              ),
              Flexible(flex: 1, child: ElevatedBtn2(btnName: ' TAILS ')),
              const SizedBox(
                height: 190 / 2,
              ),
              btnConfirm(context: context, btnName: ' DONE '),
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
          if (isDone) {
            Navigator.pushNamed(context, '/coin');
          }
          setState(() {
            tossResult = 'Please Wait';
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
            if (!isDone) {
              btn1Clr = myYellow;
              isDone = true;
              heads = true;
              tails = false;
            } else if (isDone && heads) {
              isDone = false;
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
            if (!isDone) {
              btn2Clr = myYellow;
              isDone = true;
              heads = false;
              tails = true;
            } else if (isDone && tails) {
              btn2Clr = Colors.transparent;
              isDone = false;
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
