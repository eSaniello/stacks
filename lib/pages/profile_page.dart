import 'package:flutter/material.dart';

import '../widgets/ratings.dart';

class ProfilePage extends StatelessWidget {
  static final showGrid = true; // Set to false to show ListView
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget profileHeader = Container(
      //width: 10,
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
                      StarDisplay(value: 4),
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

    return Scaffold(
      body: ListView(
        children: <Widget>[
          profileHeader,
          headerProjecten,
          projecten,
        ],
      ),
    );
  }
}
