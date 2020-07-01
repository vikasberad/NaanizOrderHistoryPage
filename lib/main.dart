import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:ticketview/ticketview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter TicketView Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//bool _showTicketView = true;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3e3e3),
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Order History1',
              style: TextStyle(color: Colors.black)),
          elevation: 0.0,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 25,
            ),
            //onPressed:() => Navigator.pop(context, false),
            onPressed: () => exit(0),
          )),
    );
  }
}
