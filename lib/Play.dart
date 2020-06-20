import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heads_or_tails/Result.dart';


class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  void _displayResult(){

    var items = ["heads", "tails"];
    var number = Random().nextInt(items.length);
    var result = items[number];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Result(result)
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _displayResult,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}