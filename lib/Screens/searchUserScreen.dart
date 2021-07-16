import 'package:flutter/material.dart';
import 'package:insta_id_tracker/Screens/user_screen.dart';
import 'package:insta_id_tracker/Widgets/button_tile.dart';

import '../constants.dart';

class SearchUserScreen extends StatefulWidget {
  static String id = 'Search_User_Screen';
  @override
  _SearchUserScreenState createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends State<SearchUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: TextButton(
                    child: Image.asset(
                      'images/logout.png',
                      height: 30,
                      width: 30,
                    ),
                  )),
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 24, horizontal: 8),
                            child: Text(
                              'Search Instagram User',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 36),
                          child: TextField(
                            cursorColor: kPrimaryColour,
                            decoration: kTextFieldDecoration.copyWith(
                              hintText: 'User ID',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: ButtonTile(
                            onPress: () {
                              Navigator.pushNamed(context, UserScreen.id);
                            },
                            text: 'Search',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
