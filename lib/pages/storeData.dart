// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:coin_app/assets.dart';

class StoreData extends StatefulWidget {
  const StoreData({Key? key}) : super(key: key);

  @override
  _StoreDataState createState() => _StoreDataState();
}

class _StoreDataState extends State<StoreData> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  List<String> names = [];
  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
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
            SizedBox(
              height: 150 / 2,
            ),
            Flexible(
              flex: 4,
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
              height: 150 / 2,
            ),
            Flexible(
              flex: 4,
              child: SizedBox(
                width: 300,
                child: customTextField(
                  hintText: 'Enter Name 1',
                  textController: controller1,
                ),
              ),
            ),
            SizedBox(
              height: 50 / 2,
            ),
            Flexible(
              flex: 4,
              child: SizedBox(
                width: 300,
                child: customTextField(
                  hintText: 'Enter Name 2',
                  textController: controller2,
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        playerOneName = controller1.text;
                        playerTwoName = controller2.text;
                        nameOfPlayerOne = controller1.text;
                        nameOfPlayerTwo = controller2.text;
                        if (nameOfPlayerOne != '' && nameOfPlayerTwo != '') {
                          Navigator.pushNamed(context, '/sides');
                        }
                      });
                    },
                    child: Text(
                      'Done'.toUpperCase(),
                      style: TextStyle(
                        color: myYellow,
                        fontFamily: sandBold,
                        fontSize: 25,
                        letterSpacing: 1,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(110, 30, 110, 30),
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
            SizedBox(height: 10),
            Flexible(
              flex: 5,
              child: ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: Text(
                  ' Exit '.toUpperCase(),
                  style: TextStyle(
                    color: myYellow,
                    fontFamily: sandBold,
                    fontSize: 25,
                    letterSpacing: 1,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(110, 30, 110, 30),
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
      )),
    );
  }
}

class customTextField extends StatefulWidget {
  const customTextField({required this.textController, required this.hintText});

  final TextEditingController textController;
  final String hintText;

  @override
  State<customTextField> createState() => _customTextFieldState();
}

class _customTextFieldState extends State<customTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      autocorrect: false,
      style: TextStyle(
        fontFamily: sandReg,
        color: myYellow,
        fontSize: 20,
      ),
      controller: widget.textController,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: myBlueHint,
          fontFamily: sandReg,
          letterSpacing: 1,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: myYellow,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: myBlueHint,
          ),
        ),
      ),
    );
  }
}
