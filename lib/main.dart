import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticketview/ticketview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

class _MyHomePageState extends State<MyHomePage> {
  var ItemPrice = 2;

  var TotalPrice = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                text: TextSpan(
                  text: 'Order History',
                  style: GoogleFonts.khula(
                      color: Color(0xff000000),
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 40,
          ),
          //onPressed:() => Navigator.pop(context, false),
          onPressed: () => exit(0),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: _getTicketReceiptView(),
              ),
            )
          ],
        ),
      ),
    );
  }

  int _ticketCount = 0;
  Container counterWidget() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                if (_ticketCount > 0) {
                  setState(() {
                    _ticketCount--;
                  });
                }
              }),
          Expanded(
            child: Text(
              "$_ticketCount",
              // ticket.selectedTickets.value.toString(),
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 30),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {
              setState(() {
                _ticketCount++;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _getTicketReceiptView() {
    return Container(
      width: 354,
      height: 222,
      child: TicketView(
        backgroundPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        backgroundColor: Color(0xffF9F9F9),
        contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
        drawArc: false,
        triangleAxis: Axis.vertical,
        borderRadius: 9,
        drawDivider: true,
        trianglePos: 0,
        dividerStrokeWidth: 5,
        drawShadow: true,
        // dividerColor: Color(0xffF9F9F9),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Deliver',
                            style: GoogleFonts.poppins(
                                color: Color(0xffFE4E74),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: <Widget>[
                          Text(
                            'Item Name',
                            style: GoogleFonts.poppins(
                                color: Color(0xff5D5D5D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(child: Container()),
                          Text(
                            '------------',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '     ${ItemPrice}',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'Kg',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            'Item Name',
                            style: GoogleFonts.poppins(
                                color: Color(0xff5D5D5D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(child: Container()),
                          Text(
                            '------------',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '     ${ItemPrice}',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'Kg',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            'Item Name',
                            style: GoogleFonts.poppins(
                                color: Color(0xff5D5D5D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(child: Container()),
                          Text(
                            '------------',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '     ${ItemPrice}',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'Kg',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Row(
                        children: <Widget>[
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Kg',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffFE4E74),
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),
                                TextSpan(
                                  text: '${TotalPrice}',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffFE4E74),
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            width: 100,
                            height: 35,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)),
                              color: Colors.white,
                              textColor: Color.fromARGB(255, 254, 78, 116),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {},
                              child: Text(
                                "Completed",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getTicketReceiptView1() {
    return Container(
      width: 354,
      height: 222,
      child: TicketView(
        backgroundPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        backgroundColor: Color(0xffF9F9F9),
        contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
        drawArc: false,
        triangleAxis: Axis.vertical,
        borderRadius: 9,
        drawDivider: true,
        trianglePos: 0,
        dividerStrokeWidth: 5,
        drawShadow: true,
        // dividerColor: Color(0xffF9F9F9),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Deliver',
                            style: GoogleFonts.poppins(
                                color: Color(0xffFE4E74),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: <Widget>[
                          Text(
                            'Item Name',
                            style: GoogleFonts.poppins(
                                color: Color(0xff5D5D5D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(child: Container()),
                          Text(
                            '------------',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '     ${ItemPrice}',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'Kg',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            'Item Name',
                            style: GoogleFonts.poppins(
                                color: Color(0xff5D5D5D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(child: Container()),
                          Text(
                            '------------',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '     ${ItemPrice}',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'Kg',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            'Item Name',
                            style: GoogleFonts.poppins(
                                color: Color(0xff5D5D5D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(child: Container()),
                          Text(
                            '------------',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '     ${ItemPrice}',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'Kg',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Row(
                        children: <Widget>[
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Kg',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffFE4E74),
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),
                                TextSpan(
                                  text: '${TotalPrice}',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffFE4E74),
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            width: 100,
                            height: 35,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)),
                              color: Colors.white,
                              textColor: Color.fromARGB(255, 254, 78, 116),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {},
                              child: Text(
                                "Completed",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
