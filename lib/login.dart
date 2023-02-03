import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikrby/myHome.dart';
import 'dart:ui' as ui;

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onVerticalDragUpdate: (swipeUp){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (Context) => MyHomePage()),

            );
          },
          child: Container(
              child: Stack(children: [
      Positioned(
          height: MediaQuery.of(context).size.height * 0.50,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.greenAccent, Colors.blue])),
          ),
      ),
      Positioned(
          top: MediaQuery.of(context).size.height * 0.50,
          height: MediaQuery.of(context).size.height * 0.50,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.greenAccent,
            ])),
          ),
      ),
      Positioned(
          top: MediaQuery.of(context).size.height * 0.43,
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Center(
            child: Text(
              "QuikrBy",
              style: TextStyle(
                  fontFamily: "Times New Roman",
                  fontSize: 80,
                  foreground: Paint()
                    ..shader = ui.Gradient.linear(
                      const Offset(0, 150),
                      const Offset(200, 20),
                      <Color>[
                        Colors.red,
                        Colors.yellow,
                      ],
                    )),
            ),
          )),
      ),
      Positioned(
          top: MediaQuery.of(context).size.height * 0.53,
          width: MediaQuery.of(context).size.width,
          child: Container(
              height: MediaQuery.of(context).size.height * 0.03,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "Reach Out !",
                  style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          const Offset(0, 200),
                          const Offset(200, 20),
                          <Color>[
                            Colors.red,
                            Colors.yellow,
                          ],
                        )),
                ),
              )),
      ),
      Positioned(
          top: MediaQuery.of(context).size.height * 0.90,
          width: MediaQuery.of(context).size.width,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Slide Up to Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Times New Roman",
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        foreground: Paint()
                          ..shader = ui.Gradient.linear(
                            const Offset(0, 50),
                            const Offset(200, 30),
                            <Color>[
                              Colors.purple,
                              Colors.red,
                            ],
                          )),
                  ),
                )),
          ),
      ),
    ])),
        ));
  }
}
