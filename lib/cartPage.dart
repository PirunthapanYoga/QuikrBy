import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
        title: Text(
          "Cart",
          style: TextStyle(
              fontFamily: "Times New Roman",
              fontSize: 20,
              foreground: Paint()
                ..shader = ui.Gradient.linear(
                  const Offset(0, 150),
                  const Offset(200, 20),
                  <Color>[
                    Colors.red,
                    Colors.black,
                  ],
                )),
        ),
      ),
        body: Container(
            child: Stack(children: [
              Positioned(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                      LinearGradient(colors: [Colors.greenAccent, Colors.blue])),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.45,
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
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Item 1",
                            style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 15,
                                foreground: Paint()
                                  ..shader = ui.Gradient.linear(
                                    const Offset(0, 150),
                                    const Offset(200, 20),
                                    <Color>[
                                      Colors.red,
                                      Colors.black,
                                    ],
                                  )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Item 2",
                            style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 15,
                                foreground: Paint()
                                  ..shader = ui.Gradient.linear(
                                    const Offset(0, 150),
                                    const Offset(200, 20),
                                    <Color>[
                                      Colors.red,
                                      Colors.black,
                                    ],
                                  )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Item 3",
                            style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 15,
                                foreground: Paint()
                                  ..shader = ui.Gradient.linear(
                                    const Offset(0, 150),
                                    const Offset(200, 20),
                                    <Color>[
                                      Colors.red,
                                      Colors.black,
                                    ],
                                  )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Item 4",
                            style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 15,
                                foreground: Paint()
                                  ..shader = ui.Gradient.linear(
                                    const Offset(0, 150),
                                    const Offset(200, 20),
                                    <Color>[
                                      Colors.red,
                                      Colors.black,
                                    ],
                                  )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Item 5",
                            style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 15,
                                foreground: Paint()
                                  ..shader = ui.Gradient.linear(
                                    const Offset(0, 150),
                                    const Offset(200, 20),
                                    <Color>[
                                      Colors.red,
                                      Colors.black,
                                    ],
                                  )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Item 6",
                            style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 15,
                                foreground: Paint()
                                  ..shader = ui.Gradient.linear(
                                    const Offset(0, 150),
                                    const Offset(200, 20),
                                    <Color>[
                                      Colors.red,
                                      Colors.black,
                                    ],
                                  )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Item 7",
                            style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 15,
                                foreground: Paint()
                                  ..shader = ui.Gradient.linear(
                                    const Offset(0, 150),
                                    const Offset(200, 20),
                                    <Color>[
                                      Colors.red,
                                      Colors.black,
                                    ],
                                  )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Item 8",
                            style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 15,
                                foreground: Paint()
                                  ..shader = ui.Gradient.linear(
                                    const Offset(0, 150),
                                    const Offset(200, 20),
                                    <Color>[
                                      Colors.red,
                                      Colors.black,
                                    ],
                                  )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.05,
                              ),
                              Text(
                                "Double tap to Check out",
                                style: TextStyle(
                                    fontFamily: "Times New Roman",
                                    fontSize: 15,
                                    foreground: Paint()
                                      ..shader = ui.Gradient.linear(
                                        const Offset(0, 150),
                                        const Offset(200, 20),
                                        <Color>[
                                          Colors.red,
                                          Colors.black,
                                        ],
                                      )),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.30,
                              ),
                              Icon(
                                Icons.payments_sharp,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ])));
  }
}
