import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;
  final foodType;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice, this.foodType});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _n = 0;

  get cname => null;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  bool toggleValue = false;

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }

  String hero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Details',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_basket),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 75.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.heroTag),
                            fit: BoxFit.cover)),
                    height: 200.0,
                    width: 200.0)),
            Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                    Text(widget.foodType,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Fast Delivery',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Colors.grey)),
                        Container(height: 25.0, color: Colors.grey, width: 1.0),
                        Container(
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            height: 30.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: toggleValue
                                    ? Colors.blueAccent[100]
                                    : Colors.black.withOpacity(0.5)),
                            child: new Stack(
                              children: [
                                new AnimatedPositioned(
                                  child: InkWell(
                                    onTap: toggleButton,
                                    child: AnimatedSwitcher(
                                        duration: Duration(milliseconds: 1000),
                                        transitionBuilder: (Widget child,
                                            Animation<double> animation) {
                                          return ScaleTransition(
                                              child: child, scale: animation);
                                        },
                                        child: toggleValue
                                            ? Icon(Icons.check_circle,
                                                color: Colors.white,
                                                size: 25.0,
                                                key: UniqueKey())
                                            : Icon(Icons.remove_circle_outline,
                                                color: Colors.white,
                                                size: 25.0,
                                                key: UniqueKey())),
                                  ),
                                  duration: Duration(milliseconds: 1000),
                                  curve: Curves.easeIn,
                                  top: 3.0,
                                  left: toggleValue ? 60.0 : 0.0,
                                  right: toggleValue ? 0.0 : 60.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Price :",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Colors.grey)),
                        Text('₹' + widget.foodPrice,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Colors.grey)),

                        //  Container(height: 25.0, color: Colors.grey, width: 1.0),
                        Container(
                            height: 30.0,
                            width: 30.0,
                            child: new FloatingActionButton(
                              heroTag: null,
                              onPressed: add,
                              child: new Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 15.0,
                              ),
                              backgroundColor: Colors.white,
                            )),
                        // SizedBox(
                        //   width: 10.0,
                        // ),
                        new Text(
                          '$_n',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontFamily: 'Montserrat'),
                        ),
                        // SizedBox(
                        //   width: 10.0,
                        // ),
                        Container(
                            height: 30.0,
                            width: 30.0,
                            child: new FloatingActionButton(
                              heroTag: null,
                              onPressed: minus,
                              child: new Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 15.0,
                              ),
                              backgroundColor: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0)),
                            color: Colors.black),
                        height: 50.0,
                        child: Center(
                          child: Text('Add To Cart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    )
                  ],
                ))
          ])
        ]));
  }
}
