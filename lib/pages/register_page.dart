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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 4,
            child: Column(
              children: <Widget>[
                Text(
                  'Registreer',
                  style: TextStyle(
                    fontFamily: "AllertaStencil",
                    fontSize: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Naam",
                      filled: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Voornaam",
                      filled: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      filled: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Mobiel",
                      filled: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Adres",
                      filled: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Woonplaats",
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Verifieer wachtwoord",
                      filled: false,
                    ),
                    obscureText: true,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment(1, 1),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 175,
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'registreren',
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
