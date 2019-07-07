import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'STACKS',
                style: TextStyle(fontSize: 48),
              ),
            ),
            Container(
              child: Text(
                'Freelance services op aanvraag',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: double.infinity,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/zoek_dienst.jpg',
                          fit: BoxFit.contain,
                          height: 50,
                        ),
                        Text("Zoek een dienst"),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/verleen_dienst.png',
                          fit: BoxFit.contain,
                          height: 50,
                        ),
                        Text("Verleen een dienst"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
