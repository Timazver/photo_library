import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_library/ui/colors/custom_colors.dart';

class CustomTextStyle {

  static TextStyle searchBarTitle = TextStyle(
    fontSize: 17,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: CustomColors.searchBarTitle
  );

  static TextStyle photoLikesCount = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );

  static TextStyle appBarTitle = TextStyle(
    fontSize: 17,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );

  static TextStyle userName = TextStyle(
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: Colors.black
  );

  static TextStyle userUsername = TextStyle(
    fontSize: 13,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: CustomColors.userName
  );
}