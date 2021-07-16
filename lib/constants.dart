import 'package:flutter/material.dart';

Color kPrimaryColour = Color(0xFFF25A45);
Color kTextColor = Color(0xFF757575);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your password',
  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFF6F6F6), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFF25A45), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);
