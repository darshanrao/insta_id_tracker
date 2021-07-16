import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_id_tracker/Screens/searchUserScreen.dart';
import 'package:insta_id_tracker/Widgets/button_tile.dart';

import 'package:insta_id_tracker/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'Login Screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  bool passwordBool = true;
  @override
  void initState() {
    // TODO: implement initState
    passwordBool = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 0.35 * height,
                width: double.infinity,
                color: kPrimaryColour,
              ),
              Container(
                color: Colors.white,
                height: 0.65 * height,
                width: double.infinity,
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24, horizontal: 8),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: TextField(
                            onChanged: (value) {
                              email = value;
                            },
                            cursorColor: kPrimaryColour,
                            decoration: kTextFieldDecoration.copyWith(
                              hintText: 'Email Address',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: TextField(
                            onChanged: (value) {
                              password = value;
                            },
                            obscureText: passwordBool,
                            cursorColor: kPrimaryColour,
                            decoration: kTextFieldDecoration.copyWith(
                              hintText: 'Password',
                              suffixIcon: TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    passwordBool = passwordBool ? false : true;
                                  });
                                },
                                icon: passwordBool
                                    ? Icon(
                                        CupertinoIcons.eye_slash_fill,
                                        size: 16,
                                        color: kTextColor,
                                      )
                                    : Icon(
                                        CupertinoIcons.eye_fill,
                                        size: 16,
                                        color: kTextColor,
                                      ),
                                label: SizedBox(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: ButtonTile(
                            onPress: () {
                              Navigator.pushNamed(context, SearchUserScreen.id);
                            },
                            text: 'Login',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Center(
                              child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: kTextColor,
                            ),
                          )),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  color: kTextColor,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, SignUpScreen.id);
                                },
                                child: Text(
                                  'Sign up !',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColour),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
