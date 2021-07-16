import 'package:flutter/material.dart';
import 'package:insta_id_tracker/Widgets/button_tile.dart';
import 'package:insta_id_tracker/constants.dart';
import 'signup_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'Home_Screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'images/homescreenimage.png',
            width: 250,
            height: 250,
          ),
          SizedBox(height: 100),
          ButtonTile(
            text: 'Login',
            onPress: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
          ),
          ButtonTile(
            text: 'Sign Up',
            onPress: () {
              Navigator.pushNamed(context, SignUpScreen.id);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text(
                'Terms of Service & Privacy Policy',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          )
        ],
      ),
    );
  }
}
