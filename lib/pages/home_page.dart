import 'package:flutter/material.dart';

import '../models/post.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> dummyData = [
    Post(
      postId: 1,
      categorieId: 1,
      klantId: 1,
      tijd: "2019-07-22 15:20:35",
      titel: "Tuinman gezocht!",
      inhoud:
          "ik ben opzoek naar een tuinman en zal SRD 40 betalen voor zijn services, zou jij de juiste kunnen zijn? Bel op 8975632",
    ),
    Post(
      postId: 2,
      klantId: 2,
      tijd: "2019-07-22 15:42:48",
      titel: "Bakker gezocht!",
      inhoud:
          "ik ben opzoek naar een bakker die lekkere broden, koekjes, bollen etc. bakt. Ik heb honger!",
      categorieId: 2,
    ),
    Post(
      postId: 3,
      klantId: 2,
      tijd: "2019-07-22 15:42:48",
      titel: "Programmeur gezocht!",
      inhoud:
          "ik ben opzoek naar een programmeur die mijn mooi website die ik gedachten heb kan bouwen!",
      categorieId: 2,
    ),
    Post(
      postId: 3,
      klantId: 2,
      tijd: "2019-07-22 15:42:48",
      titel: "Oppas gezocht!",
      inhoud:
          "ik ben opzoek naar iemand die op me baby kan letten want ik wil uit met me vrouw.",
      categorieId: 2,
    ),
    Post(
      postId: 3,
      klantId: 2,
      tijd: "2019-07-22 15:42:48",
      titel: "Music producer gezocht!",
      inhoud:
          "ik ben opzoek naar iemand die beats voor me kan maken waarop ik kan zingen en rappen.",
      categorieId: 2,
    ),
    Post(
      postId: 3,
      klantId: 2,
      tijd: "2019-07-22 15:42:48",
      titel: "Belastingsadviseur gezocht!",
      inhoud:
          "ik ben opzoek naar iemand die mij advies kan geven over belastingen in mijn bedrijf",
      categorieId: 2,
    ),
    Post(
      postId: 3,
      klantId: 2,
      tijd: "2019-07-22 15:42:48",
      titel: "Voice over dude gezocht!",
      inhoud:
          "ik ben opzoek naar iemand die een diepe stem heeft en een character kan voicen voor me.",
      categorieId: 2,
    ),
    Post(
      postId: 3,
      klantId: 2,
      tijd: "2019-07-22 15:42:48",
      titel: "Game developer gezocht!",
      inhoud: "ik ben opzoek naar iemand die games kan maken voor me.",
      categorieId: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Dashboard",
            style: TextStyle(fontFamily: "AllertaStencil"),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          elevation: 2,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.fromLTRB(10, 30, 0, 10),
                child: ListTile(
                  title: Text('Kenson Latchmansing'),
                  leading: Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile_pic.png'),
                    ),
                  ),
                  subtitle: Text("Balans: SRD 280.00"),
                ),
              ),
              ListTile(
                title: Text('Profiel'),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.pushNamed(context, '/profile-page');
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Dashboard'),
                leading: Icon(Icons.dashboard),
                onTap: () {
                  // Update the state of the app.
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.category),
                onTap: () {
                  // Update the state of the app.
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Notificaties'),
                leading: Icon(Icons.notifications_active),
                onTap: () {
                  // Update the state of the app.
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Instellingen'),
                leading: Icon(Icons.settings),
                onTap: () {
                  // Update the state of the app.
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Uitloggen'),
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  // Update the state of the app.
                  // ...
                  // Then close the drawer
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.work,
                      color: Colors.blue,
                    ),
                    title: Text(dummyData[index].titel),
                    subtitle: Text(dummyData[index].inhoud),
                    trailing: IconButton(
                      icon: Icon(Icons.message),
                      color: Colors.green,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
