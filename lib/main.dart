import 'package:flutter/material.dart';

import './pages/profile_page.dart';
import './pages/home_page.dart';
import './pages/login_page.dart';
import './pages/register_page.dart';
import './pages/front_page.dart';

void main() => runApp(StacksApp());

class StacksApp extends StatelessWidget {
  static final Map<int, Color> color = const {
    50: Color.fromRGBO(12, 211, 247, .1),
    100: Color.fromRGBO(12, 211, 247, .2),
    200: Color.fromRGBO(12, 211, 247, .3),
    300: Color.fromRGBO(12, 211, 247, .4),
    400: Color.fromRGBO(12, 211, 247, .5),
    500: Color.fromRGBO(12, 211, 247, .6),
    600: Color.fromRGBO(12, 211, 247, .7),
    700: Color.fromRGBO(12, 211, 247, .8),
    800: Color.fromRGBO(12, 211, 247, .9),
    900: Color.fromRGBO(12, 211, 247, 1),
  };

  MaterialColor colorCustom = MaterialColor(0xFF0cd3f7, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STACKS',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: colorCustom,
        accentColor: Colors.blueAccent,
        fontFamily: 'Philosopher',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 85,
                fontFamily: 'AllertaStencil',
              ),
              subtitle: TextStyle(
                fontFamily: 'Philosopher',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              button: TextStyle(
                color: Colors.white,
                fontFamily: "Philosopher",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (BuildContext context) => FrontPage(),
        '/login-page': (BuildContext context) => LoginPage(),
        '/register-page': (BuildContext context) => RegisterPage(),
        '/home-page': (BuildContext context) => HomePage(),
        '/profile-page': (BuildContext context) => ProfilePage(),
      },
    );
  }
}
