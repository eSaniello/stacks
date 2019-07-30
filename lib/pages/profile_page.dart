import 'package:flutter/material.dart';

import '../widgets/ratings.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profiel"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 130,
              color: Theme.of(context).primaryColor,
              child: Row(
                children: <Widget>[
                  //profile photo
                  new Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/profile_pic.png'),
                          radius: 50,
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //lastname
                        Container(
                          padding: const EdgeInsets.only(bottom: 8, top: 20),
                          child: Text(
                            'Latchmansing',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        //firstname
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Kenson',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        //city & rating
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Paramaribo, SR',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 25),
                                child: StarDisplay(value: 4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              height: 50,
              child: Row(
                children: <Widget>[
                  Text(
                    'Projecten',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: const ListTile(
                title: const Text('Stacks'),
                subtitle: const Text('Freelacer mobile app voor Suriname.'),
              ),
            ),
            Card(
              child: const ListTile(
                title: const Text('RS-Autowerkplaats'),
                subtitle: const Text('A web app made with PHP.'),
              ),
            ),
            Card(
              child: const ListTile(
                title: const Text('Productivv'),
                subtitle: const Text('A web app made with PHP.'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              height: 50,
              child: Row(
                children: <Widget>[
                  Text(
                    'Werkervaring',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: const ListTile(
                title: const Text('Google Inc.'),
                subtitle: const Text('2010-2013'),
              ),
            ),
            Card(
              child: const ListTile(
                title: const Text('Microsoft'),
                subtitle: const Text('2015-2017'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              height: 50,
              child: Row(
                children: <Widget>[
                  Text(
                    'Opleidingen',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: const ListTile(
                title: const Text('Mulo Meerzorg'),
                subtitle: const Text('2012-2016'),
              ),
            ),
            Card(
              child: const ListTile(
                title: const Text('Natin'),
                subtitle: const Text('2016-...'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
