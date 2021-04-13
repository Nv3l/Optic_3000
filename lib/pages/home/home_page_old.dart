import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Your notes',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      Text('Currently i am student .................................'),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Deliver to john'),
                              Text('2 Hrs'),
                              Text('Bonjour le confinnement bla bla'),
                            ],
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red,
                            ),
                          )
                        ],
                      )
                    ],
                  )
              )
          ),
        )
    );
  }
}
