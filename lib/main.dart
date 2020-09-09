import 'package:flutter/material.dart';
import 'package:v_wash/loginandsignup/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'V Wash',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bt() {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100.0,
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('images/wash_splash.jpg'),
              // Image.asset('images/arrows.png'),
              // Image.asset('images/dry_splash.jpg'),
              // Image.asset('images/arrows.png'),
              // Image.asset('images/fold_splash.jpg'),
            ],
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue),
          ),
          Align(
            alignment: Alignment(0.00, -0.40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'V',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                SizedBox(height: 10.0),
                Text(
                  'WASH',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0),
                )
              ],
            ),
          ),
          Container(
            child: bt(),
          )
        ],
      ),
    );
  }
}
