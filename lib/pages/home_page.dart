import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
                    backgroundImage: NetworkImage(
                      "https://www.citrix.com/blogs/wp-content/uploads/2017/11/Citrix-Blog-User-Bio-Photo-6.png",
                    ),
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
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
