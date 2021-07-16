import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_id_tracker/user_model.dart';

import '../Services.dart';
import '../constants.dart';

class UserScreen extends StatefulWidget {
  static String id = 'User_Screen';
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool _loading;
  UserClass _user;
  Services services;
  String userID = 'robertdowneyjr';
  String userIDSearched;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Services.getUserData(userID).then((value) {
      setState(() {
        _loading = false;
        _user = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_user);
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
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 36),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      // userID = userIDSearched;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 6, top: 5),
                                    child: Icon(CupertinoIcons.search,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              kPrimaryColour)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 36, bottom: 36, right: 56),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    userIDSearched = value;
                                  },
                                  cursorColor: kPrimaryColour,
                                  decoration: kTextFieldDecoration.copyWith(
                                    hintText: 'User ID',
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 90.0,
                                          height: 90.0,
                                          decoration: new BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: CircleAvatar(
                                              radius: 50.0,
                                              backgroundImage: NetworkImage(
                                                  _user.profilePicUrl
                                                      .toString())),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0, vertical: 8),
                                          child: Text(
                                            _user.fullName,
                                            style: TextStyle(
                                                color: kTextColor,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.person,
                                                    color: kTextColor,
                                                  ),
                                                  Text(
                                                    _user.edgeFollowedBy.count
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: kTextColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.image,
                                                    color: kTextColor,
                                                  ),
                                                  Text(
                                                    _user
                                                        .edgeOwnerToTimelineMedia
                                                        .count
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: kTextColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    _user.biography,
                                    style: TextStyle(
                                        color: kTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
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
