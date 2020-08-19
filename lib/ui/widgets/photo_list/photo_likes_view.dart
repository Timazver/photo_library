
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_library/ui/styles/custom_text_style.dart';

class PhotoLikesView extends StatelessWidget {

  final int likesCount;

  PhotoLikesView({this.likesCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 16,
            height: 14,
            child: Image.asset("resources/images/like.png")
          ),
          Text("$likesCount", style: CustomTextStyle.photoLikesCount)
        ]
      )
    );
  }

}