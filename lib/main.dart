import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final showGrid = true; // Set to false to show ListView
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget profileHeader = Container(
      //width: 10,
      height: 130,
      color: Colors.blue,
      child: Row(
        children: <Widget>[
          //profile photo
          new Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/Koala.jpg'),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 14,
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
        ],
      ),
    );

    Widget headerProjecten = Container(
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
          Divider(),
        ],
      ),
    );

    Widget headerWerkervaring = Container(
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
          Divider(),
        ],
      ),
    );

    Widget headerOpleiding = Container(
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
          Divider(),
        ],
      ),
    );

    Widget project = Container(
      child: Column(
        children: <Widget>[
          new Card(
            child: Column(
              children: <Widget>[
                const ListTile(
                  title: const Text('Stacks'),
                  subtitle: const Text('Freelacer mobile app voor Suriname.'),
                ),
              ],
            ),
          ),
          new Card(
            child: Column(
              children: <Widget>[
                const ListTile(
                  title: const Text('RS-Autowerkplaats'),
                  subtitle: const Text('A web app made with PHP.'),
                ),
              ],
            ),
          ),
          new Card(
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
    );

    Widget werkervaring = Container(
      child: Column(
        children: <Widget>[
          new Card(
            child: Column(
              children: <Widget>[
                const ListTile(
                  title: const Text('Google Inc.'),
                  subtitle: const Text('2010-2013'),
                ),
              ],
            ),
          ),
          new Card(
            child: Column(
              children: <Widget>[
                const ListTile(
                  title: const Text('Microsoft'),
                  subtitle: const Text('2015-2017'),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget opleiding = Container(
      child: Column(
        children: <Widget>[
          new Card(
            child: Column(
              children: <Widget>[
                const ListTile(
                  title: const Text('Mulo Meerzorg'),
                  subtitle: const Text('2012-2016'),
                ),
              ],
            ),
          ),
          new Card(
            child: Column(
              children: <Widget>[
                const ListTile(
                  title: const Text('Natin'),
                  subtitle: const Text('2016-...'),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Stacks',
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            profileHeader,
            headerProjecten,
            project,
            headerWerkervaring,
            werkervaring,
            headerOpleiding,
            opleiding,
          ],
        ),
      ),
    );
  }
}
