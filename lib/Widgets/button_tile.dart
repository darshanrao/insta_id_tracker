import 'package:flutter/material.dart';
import 'package:insta_id_tracker/constants.dart';

class ButtonTile extends StatelessWidget {
  final Function onPress;
  final String text;
  ButtonTile({this.onPress, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: TextButton(
        onPressed: onPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 15),
          ),
        ),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(10),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(kPrimaryColour)),
      ),
    );
  }
}
