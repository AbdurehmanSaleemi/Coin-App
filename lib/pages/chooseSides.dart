import 'package:flutter/material.dart';
import 'package:coin_app/assets.dart';
import 'package:flutter/rendering.dart';

class ChooseSides extends StatefulWidget {
  const ChooseSides({Key? key}) : super(key: key);

  @override
  _ChooseSidesState createState() => _ChooseSidesState();
}

class _ChooseSidesState extends State<ChooseSides> {
  Widget elevatedBtn1(btnName) {
    return Flexible(
      flex: 1,
      child: ElevatedButton(
        onPressed: () {
          playerTwoSide = false;
          playerOneSide = true;
        },
        child: Text(
          btnName.toUpperCase(),
          style: TextStyle(
            color: myYellow,
            fontFamily: sandBold,
            fontSize: 25,
            letterSpacing: 1,
          ),
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: borderClr,
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

  Widget elevatedBtn2(btnName) {
    return Flexible(
      flex: 1,
      child: ElevatedButton(
        onPressed: () {
          playerTwoSide = true;
          playerOneSide = false;
        },
        child: Text(
          btnName.toUpperCase(),
          style: TextStyle(
            color: myYellow,
            fontFamily: sandBold,
            fontSize: 25,
            letterSpacing: 1,
          ),
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: borderClr,
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

  Widget btnConfirm(btnName) {
    return Flexible(
      flex: 1,
      child: ElevatedButton(
        onPressed: () {
          print(playerOneSide);
          print(playerTwoSide);
        },
        child: Text(
          btnName.toUpperCase(),
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
              elevatedBtn1('PLAYER 1'),
              const SizedBox(
                height: 70 / 2,
              ),
              elevatedBtn2('PLAYER 2'),
              const SizedBox(
                height: 180 / 2,
              ),
              btnConfirm('   DONE   '),
            ],
          ),
        ),
      ),
    );
  }
}
