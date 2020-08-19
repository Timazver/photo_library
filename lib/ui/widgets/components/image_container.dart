
import 'package:flutter/material.dart';
import 'package:photo_library/domain/model/photo.dart';

class ImageContainer extends StatelessWidget {

  final Photo photo;

  ImageContainer({this.photo});
  
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 338,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(photo.urls.regular), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(17)
          ),
        );
  }

}