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

    // Widget projecten = ListView(
    //   shrinkWrap: true,
    //   padding: const EdgeInsets.all(8),
    //   children: <Widget>[
    //     SizedBox(
    //       height: 210,
    //       child: Card(
    //         child: Column(
    //           children: <Widget>[
    //             ListTile(
    //               title: Text(
    //                 'Stacks',
    //                 style: TextStyle(fontWeight: FontWeight.w500),
    //               ),
    //               subtitle: Text('Lorem ipsum gorrea...'),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //     Divider(),
    //     SizedBox(
    //       height: 210,
    //       child: Card(
    //         child: Column(
    //           children: <Widget>[
    //             ListTile(
    //               title: Text(
    //                 'RS-Autowerkplaats',
    //                 style: TextStyle(fontWeight: FontWeight.w500),
    //               ),
    //               subtitle: Text('Web-app made with PHP.'),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );

    Widget projecten = ListView(
      shrinkWrap: true,
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
        Divider(),
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
        Divider(),
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
        Divider(),
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
        Divider(),
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
        Divider(),
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
        Divider(),
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
    );

    return MaterialApp(
      title: 'Stacks',
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            profileHeader,
            headerProjecten,
            projecten,
          ],
        ),
      ),
    );
  }
}
