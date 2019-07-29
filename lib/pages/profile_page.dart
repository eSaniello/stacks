import 'package:flutter/material.dart';

import '../widgets/ratings.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profiel"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 130,
              color: Theme.of(context).primaryColor,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://www.citrix.com/blogs/wp-content/uploads/2017/11/Citrix-Blog-User-Bio-Photo-6.png"),
                          radius: 50,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: ListTile(
                            title: Text(
                              "Latchmansing",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              "Kenson",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Paramaribo, SR',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
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
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Projecten',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    title: const Text('Stacks'),
                    subtitle: const Text('Freelacer mobile app voor Suriname.'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    title: const Text('RS-Autowerkplaats'),
                    subtitle: const Text('A web app made with PHP.'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    title: const Text('Productivv'),
                    subtitle: const Text('A web app made with PHP.'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    title: const Text('Productivv'),
                    subtitle: const Text('A web app made with PHP.'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    title: const Text('Productivv'),
                    subtitle: const Text('A web app made with PHP.'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    title: const Text('Productivv'),
                    subtitle: const Text('A web app made with PHP.'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    title: const Text('Productivv'),
                    subtitle: const Text('A web app made with PHP.'),
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
