
import 'package:flutter/material.dart';
import 'package:photo_library/domain/model/photo.dart';
import 'package:photo_library/ui/widgets/components/image_container.dart';
import 'package:photo_library/ui/widgets/photo_list/photo_likes_view.dart';

class PhotoListItem extends StatelessWidget {

  final Photo photo;

  PhotoListItem({this.photo});
  
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: <Widget>[
        ImageContainer(photo: photo),
        Positioned(
          top: 10,
          right: 10,
          child: PhotoLikesView(likesCount: photo.likes))
      ],
    );
  }

}