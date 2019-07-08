import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'AllertaStencil',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: Text(
                'Freelance services op aanvraag',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      color: Colors.deepPurpleAccent,
                      margin: EdgeInsets.all(10),
                      elevation: 3,
                      child: InkWell(
                        splashColor: Colors.white.withAlpha(60),
                        onTap: () {
                          print('Zoek een dienst tapped');
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/zoek_dienst.png',
                              fit: BoxFit.contain,
                              height: 100,
                              alignment: Alignment.center,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Text(
                                "Zoek een dienst",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.deepPurpleAccent,
                      margin: EdgeInsets.all(10),
                      elevation: 3,
                      child: InkWell(
                        splashColor: Colors.white.withAlpha(60),
                        onTap: () {
                          print('Verleen een dienst tapped');
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/verleen_dienst.png',
                              fit: BoxFit.contain,
                              height: 100,
                              alignment: Alignment.center,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Text(
                                "Verleen een dienst",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
