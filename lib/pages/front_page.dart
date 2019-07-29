import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  .55,
              padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  .15,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'STACKS',
                style: TextStyle(
                  fontSize: 75,
                  fontFamily: 'AllertaStencil',
                ),
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  .10,
              padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: Text(
                'Verander je passie in je carriere',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: double.infinity,
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  .11,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Inloggen",
                  style: Theme.of(context).textTheme.button,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login-page');
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: double.infinity,
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  .11,
              margin: EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Registreren",
                  style: Theme.of(context).textTheme.button,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/register-page');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
