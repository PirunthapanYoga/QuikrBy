import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikrby/globalVariables.dart' as gVar;
import 'dart:ui' as ui;
import 'package:quikrby/cartPage.dart';
import 'package:quikrby/buyNow.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedItemCategory = 0;
  var selectedSubItemCategory = 1;
  var _title = '';
  var _subCat = '';
  var _firstFrame = true;
  var _selectedProduct = '';

  List<String> cart = [];

  void _selectedItem(var index) {
    setState(() {
      selectedItemCategory = index;
    });
  }

  void _selectedSubItem(var index) {
    setState(() {
      selectedSubItemCategory = index;
    });
  }

  void _titleControl(index) {
    setState(() {
      _title = gVar.category.elementAt(index);
      if (_title != 'Welcome Pirunthapan') {
        _subCat = _title;
        selectedSubItemCategory = 0;
      }
    });
  }

  void _changelist(index) {
    setState(() {
      _title = gVar.category.elementAt(index);
    });
  }

  void _changeSublist(index) {
    setState(() {
      _subCat =
          gVar.subCatName.elementAt(selectedItemCategory).elementAt(index);
    });
  }

  void _changeIndex(index) {
    setState(() {
      _selectedProduct = 'Item $index\n$_title\n$_subCat';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.greenAccent, Colors.blueAccent]),
        ),
        child: Scaffold(
          drawer: Drawer(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.greenAccent, Colors.blue])),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Container(
                    child: Text(
                      "Category : ",
                      style: TextStyle(
                          fontFamily: "Times New Roman",
                          fontSize: 25,
                          foreground: Paint()
                            ..shader = ui.Gradient.linear(
                              const Offset(0, 150),
                              const Offset(200, 20),
                              <Color>[
                                Colors.red,
                                Colors.black87,
                              ],
                            )),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: ListWheelScrollView(
                      onSelectedItemChanged: (index) => {
                        _titleControl(index),
                        _selectedItem(index),
                        _changelist(index),
                        _changeSublist(0),
                      },
                      itemExtent: 75,
                      children: gVar.items,
                      offAxisFraction: 0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Container(
                    child: Text(
                      "Sub Category : ",
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
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: ListWheelScrollView(
                      onSelectedItemChanged: (index) => {
                        _selectedSubItem(index),
                        _changeSublist(index),
                      },
                      itemExtent: 75,
                      children:
                          gVar.subCategory.elementAt(selectedItemCategory),
                      offAxisFraction: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          endDrawer: Drawer(
            elevation: 50,
            child: GestureDetector(
              onDoubleTap: () {
                cart.add(_selectedProduct);
              },
              onHorizontalDragUpdate: (value) {
                if (value.primaryDelta! < 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (Context) => CartPage()),
                  );
                } else if (value.primaryDelta! > 0) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => BuyNow()));
                }
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.greenAccent, Colors.blue])),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        border: Border.all(
                          color: Colors.white30,
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            _selectedProduct,
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
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Center(
                        child: Text(
                          "Description",
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
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Center(
                        child: Text(
                          "Price",
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
                      height: MediaQuery.of(context).size.height * 0.025,
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
                              "Swipe Left to Go to Cart",
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
                              width: MediaQuery.of(context).size.width * 0.10,
                            ),
                            Icon(
                              Icons.swipe,
                              size: 30,
                            )
                          ],
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
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.10,
                            ),
                            Text(
                              "Swipe Right to Buy Now",
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
                              width: MediaQuery.of(context).size.width * 0.10,
                            ),
                            Icon(
                              Icons.swipe,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.98,
                floating: false,
                pinned: true,
                leading: Container(),
                actions: <Widget>[Container()],
                toolbarHeight: 60,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    _title,
                    style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 20,
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
                  background: GestureDetector(
                    onVerticalDragStart: (x) {
                      if (_firstFrame) {
                        _titleControl(0);
                        _selectedItem(0);
                        _changelist(0);
                        _changeSublist(0);
                        _firstFrame = false;
                      }
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.greenAccent, Colors.blue])),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 10),
                                    height: MediaQuery.of(context).size.width *
                                        0.50,
                                    width: MediaQuery.of(context).size.width *
                                        0.40,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/Space.jpeg'),
                                      radius: 50,
                                    )),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
                                  height:
                                      MediaQuery.of(context).size.width * 0.50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.60,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Container(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 5, 0, 5),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.60,
                                            child: Text(
                                              "Pirunthapan Y.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: "Times New Roman",
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  foreground: Paint()
                                                    ..shader = ui.Gradient.linear(
                                                      const Offset(0, 150),
                                                      const Offset(200, 20),
                                                      <Color>[
                                                        Colors.black,
                                                        Colors.red,
                                                      ],
                                                    )),
                                            )),
                                        Container(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 5, 0, 5),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.60,
                                            child: Text(
                                                "2017E082@eng.jfn.ac.lk ",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontFamily: "Times New Roman",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    foreground: Paint()
                                                      ..shader = ui.Gradient.linear(
                                                        const Offset(0, 150),
                                                        const Offset(200, 20),
                                                        <Color>[
                                                          Colors.red,
                                                          Colors.black,
                                                        ],
                                                      )),)),
                                        Container(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 5, 0, 5),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.60,
                                            child: Text("Rookie Tire",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontFamily: "Times New Roman",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    foreground: Paint()
                                                      ..shader = ui.Gradient.linear(
                                                        const Offset(0, 150),
                                                        const Offset(200, 20),
                                                        <Color>[
                                                          Colors.red,
                                                          Colors.black,
                                                        ],
                                                      )),)),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.05,
                              child: Text(
                                'My Address:',
                                style: TextStyle(
                                    fontFamily: "Times New Roman",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = ui.Gradient.linear(
                                        const Offset(0, 150),
                                        const Offset(200, 20),
                                        <Color>[
                                          Colors.black,
                                          Colors.red,
                                        ],
                                      )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(50,0,0,0),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.2,
                              child: Text(
                                'Address: No 10, Arriviyal nagar,\nKilinochchi,\nSri Lanka,\n43000',
                                  style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 15,
                                  foreground: Paint()
                                    ..shader = ui.Gradient.linear(
                                      const Offset(0, 150),
                                      const Offset(200, 20),
                                      <Color>[
                                        Colors.black,
                                        Colors.red,
                                      ],
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.05,
                              child: Text(
                                'Shipping Address:',
                                style: TextStyle(
                                    fontFamily: "Times New Roman",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = ui.Gradient.linear(
                                        const Offset(0, 150),
                                        const Offset(200, 20),
                                        <Color>[
                                          Colors.black,
                                          Colors.red,
                                        ],
                                      )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(50,0,0,0),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.2,
                              child: Text(
                                'Address: No 10, Arriviyal nagar,\nKilinochchi,\nSri Lanka,\n43000',
                                style: TextStyle(
                                    fontFamily: "Times New Roman",
                                    fontSize: 15,
                                    foreground: Paint()
                                      ..shader = ui.Gradient.linear(
                                        const Offset(0, 150),
                                        const Offset(200, 20),
                                        <Color>[
                                          Colors.black,
                                          Colors.red,
                                        ],
                                      )),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              SliverFillRemaining(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(2, 66, 2, 0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    children: List.generate(100, (index) {
                      return GestureDetector(
                        onTap: () {
                          _changeIndex(index);
                          print(index);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white70,
                            ),
                            gradient: RadialGradient(radius: 10, colors: [
                              Colors.white54,
                              Colors.white70,
                            ]),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Text(
                                    ' Item $index',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Text(
                                    _subCat,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
          extendBody: true,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
