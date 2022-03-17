import 'package:flutter/material.dart';


const kGreen = Color(0xFF38bf72);
const kGrey = Color(0xFF848BA4);


final khintStyle= TextStyle(
  fontWeight: FontWeight.bold,
  color: kGrey,
);


final kTextFieldDecoration = InputDecoration(
  hintText: 'Type your message here...',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kGreen, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);