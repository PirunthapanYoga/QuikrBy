import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BuyNow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              border: Border.all(
                                color: Colors.white30,
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Buy Now',
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
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              border: Border.all(
                                color: Colors.white30,
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  'AMD Ryzen 9 5950X',
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
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.25,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                  child: Image.asset('assets/images/Ryzen.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white70,),
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Center(
                              child: Text(
                                "The best processor for gamers meets the best processor for creators, with 16 cores and 32 processing threads Can deliver elite 100+ FPS performance in the world's most popular games.\nCooler not included, liquid cooler recommended\n4.9 GHz Max Boost, unlocked for overclocking, 72 MB of cache,\nDDR-3200 support For the advanced Socket AM4 platform,\ncan support PCIe 4.0 on X570 and B550 motherboards",
                                style: TextStyle(
                                    fontFamily: "Times New Roman",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
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
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: Center(
                              child: Text(
                                "235,000 LKR",
                                style: TextStyle(
                                    fontFamily: "Times New Roman",
                                    fontSize: 25,
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
                                    width: MediaQuery.of(context).size.width * 0.10,
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
              ])),
        ));
  }
}
