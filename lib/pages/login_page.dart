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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .55,
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 4,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontFamily: "AllertaStencil",
                      fontSize: 45,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "GebruikersNaam",
                      filled: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Wachtwoord",
                      filled: false,
                    ),
                    obscureText: true,
                  ),
                ),
                Container(
                  alignment: Alignment(1, 1),
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 175,
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Inloggen',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home-page', (_) => false);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
