import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[50],
            elevation: 0,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Stack(children: <Widget>[
                    Icon(Icons.maximize, color: Colors.black87),
                    Positioned(
                        top: -9,
                        left: -3,
                        child: Icon(Icons.minimize, color: Colors.black87)),
                  ]),
                  InkWell(
                    onTap: () {},
                    child: Card(
                        elevation: 4,
                        color: Colors.pinkAccent[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.shopping_cart,
                              color: Colors.white, size: 18),
                        )),
                  ),
                ])),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height: 30),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 18, top: 20),
                      child: Text('ANGRY \nWHOPPERS',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'))),
                  Column(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(
                          right: 28,
                        ),
                        child: Text('AMOUNT',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CormorantGaramond'))),
                    Padding(
                        padding: EdgeInsets.only(right: 28, top: 2),
                        child: Text('\$300',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')))
                  ])
                ]),
            SizedBox(height: 70),
            Center(
                child: Image.network(
                    'https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4132.png')),
            SizedBox(height: 30),
            Center(
                child: Text('SIZE',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold))),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              InkWell(
                onTap: () {},
                child: Card(
                  elevation: 2,
                  color: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(' S ', style: TextStyle(color: Colors.grey))),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {},
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: 17, left: 15, right: 15, bottom: 17),
                      child: Text(
                        ' M ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      )),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {},
                child: Card(
                  elevation: 2,
                  color: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(' L ', style: TextStyle(color: Colors.grey))),
                ),
              ),
            ]),
            SizedBox(height: 40),
            Center(
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                        'Our Angry Whoppers has features of \nflammed-grilled beef, piled high with thick-cut \nbacon, American Cheeze.',
                        style: TextStyle(
                            color: Colors.grey[500], fontFamily: 'Montserrat'),
                        textAlign: TextAlign.center)))
          ]),
        ));
  }
}
