
import 'package:flutter/material.dart';
import 'package:photo_library/domain/model/user.dart';
import 'package:photo_library/ui/styles/custom_text_style.dart';

class UserCard extends StatelessWidget {

  final User user;
  
  UserCard({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            child: CircleAvatar(
              backgroundImage: NetworkImage(user.profile_image.small),
          )),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(user.name, style: CustomTextStyle.userName),
              Text("@${user.username}", style: CustomTextStyle.userUsername)
            ],
          )
        ],
      )
    );
  }

}