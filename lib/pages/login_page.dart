import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inloggen'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .50,
          child: Card(
            elevation: 4,
            child: Column(
              children: <Widget>[
                Text('Log in'),
                TextField(
                  decoration: InputDecoration(
                    labelText: "GebruikersNaam",
                    filled: false,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Wachtwoord",
                    filled: false,
                  ),
                  obscureText: true,
                ),
                RaisedButton(
                  child: Text('Inloggen'),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home-page', (_) => false);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
