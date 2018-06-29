import 'package:flutter/material.dart';
import 'app_constants.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'First App',
      theme: new ThemeData(
          primarySwatch: Colors.yellow, accentColor: Colors.lightGreen),
      home: new MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String txtBuy="BUY";
  Color txtBuyColor=Colors.blue;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          'MyApp',
          style: TextStyle(color: Colors.lightGreen),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              print('Hello');
              Navigator.pop(context, this);
            }),
        actions: <Widget>[Icon(Icons.search), Icon(Icons.print)],
      ),
      backgroundColor: Colors.yellow,
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/image.jpg'),
              Column(
                children: <Widget>[
                  Padding(
                    child: Text(
                      'Teknik Lancar',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(20.0),
                  ),
                  Text(
                    'Jublee Enterprise',
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      onPressed: () {
                        purshased();
                      },
                      color: txtBuyColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        txtBuy,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(description),
              ),
              elevation: 4.0,
            ),
          )
        ],
      ),
    );
  }

  void purshased() {

    setState(() {
      txtBuyColor=Colors.lightGreen;
      txtBuy="PURCHASED";
    });
  }
}
