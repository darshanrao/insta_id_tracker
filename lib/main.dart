import 'package:flutter/material.dart';
import 'package:insta_id_tracker/Screens/searchUserScreen.dart';
import 'package:insta_id_tracker/Screens/user_screen.dart';
import 'Screens/signup_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: UserScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        SearchUserScreen.id: (context) => SearchUserScreen(),
        UserScreen.id: (context) => UserScreen(),
      },
    );
  }
}
