import 'package:flutter/material.dart';

const kRoundedRectangleRadius = BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
);

const kHeadingTextStyle = TextStyle(
  color: kMajorColor,
  fontSize: 50,
  fontWeight: FontWeight.w700,
);

const kTextFieldInputDecoration = InputDecoration(
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: kScaffoldBackgroundColor,
      width: 3,
    ),
  ),
);

const kListTilePadding = EdgeInsets.symmetric(
  horizontal: 40,
);

const kMajorColor = Color(0xfff0f5f9);
const kScaffoldBackgroundColor = Color(0xff1e2022);
