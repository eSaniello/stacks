import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registreren'),
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 4,
          child: Column(
            children: <Widget>[
              Text('Registreer'),
              TextField(
                decoration: InputDecoration(
                  labelText: "Naam",
                  filled: false,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Voornaam",
                  filled: false,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  filled: false,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Mobiel",
                  filled: false,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Adres",
                  filled: false,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Woonplaats",
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
              TextField(
                decoration: InputDecoration(
                  labelText: "Verifieer wachtwoord",
                  filled: false,
                ),
                obscureText: true,
              ),
              RaisedButton(
                child: Text('Registreren'),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home-page', (_) => false);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
