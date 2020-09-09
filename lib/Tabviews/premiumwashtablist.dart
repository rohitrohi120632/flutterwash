import 'package:flutter/material.dart';

class PremiumTab extends StatefulWidget {
  _PremiumTab createState() => _PremiumTab();
}

class _PremiumTab extends State<PremiumTab> {
  ScrollController _scrollController;

  List allDescriptions4 = [
    'First description Coming La la la first First description Coming La la First description Coming La la la firstla first',
    'Second Description',
    'Third Description',
    'Fourth Description'
  ];

  String description4;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description4 = allDescriptions4[0];
    });
  }

  changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 300).round();
    print(value);
    setState(() {
      description4 = allDescriptions4[descIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: [
              getPremiumCard(
                  'images/google_icon.png', '10', 'Party', 'Western'),
              SizedBox(
                width: 15.0,
              ),
              getPremiumCard(
                  'images/google_icon.png', '30', 'Sleeve', 'Traditional'),
              SizedBox(
                width: 15.0,
              ),
              getPremiumCard('images/personlogo.png', '10', 'Party', 'Western'),
              SizedBox(
                width: 15.0,
              ),
              getPremiumCard('images/personlogo.png', '10', 'Party', 'Western'),
              SizedBox(
                width: 15.0,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 10.0),
                child: Text(
                  'Description',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 10.0),
                child: Text(
                  description4,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

getPremiumCard(
    String imgPath, String price, String clothType, String clothName) {
  return Stack(
    children: [
      Container(
        height: 325.0,
        width: 325.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.blue,
          ),
          height: 250.0,
          width: 225.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '\$' + price,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              Image(
                image: AssetImage(imgPath),
                height: 165.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        clothType,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        clothName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(7.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Icon(
                      Icons.alarm_on,
                      color: Colors.white.withOpacity(0.4),
                      size: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Icon(
                      Icons.alarm_off,
                      color: Colors.white.withOpacity(0.4),
                      size: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Icon(
                        Icons.help_outline,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 145.0, top: 300.0),
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0), color: Colors.black),
          child: Center(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      )
    ],
  );
}
