
import 'dart:convert';

import 'package:photo_library/data/datastore/network/model/requests/photo_like_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_detail_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_list_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_unlike_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photos_request.dart';
import 'package:photo_library/data/datastore/network/protocols/backend_request.dart';
import 'package:photo_library/data/datastore/network/services/network_service.dart';
import 'package:photo_library/domain/model/photo.dart';
import 'package:photo_library/domain/model/user.dart';
import 'package:photo_library/domain/repositories/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {

  Future<List<Photo>> getPhotosByKey(PhotoListRequest request) async {
    var response = await NetworkService.networkService.request(request.endpoint, request.method, request.headers, queryParameters: request.queryParameters);
    List<Photo> photos = [];
    try {
      var array = response["results"] as List<dynamic>;
      array.forEach((element) {
        var photo = Photo.fromJson(element);
        photos.add(photo);
      });
      return photos;
    } catch(error) {
      print(error);
      return error;
    }
  }

  @override
  Future<List<Photo>> getPhotos(PhotosRequest request) async {
     var response = await NetworkService.networkService.request(request.endpoint, request.method, request.headers, queryParameters: request.queryParameters);
    List<Photo> photos = [];
    try {
      var array = response as List<dynamic>;
      array.forEach((element) {
        var photo = Photo.fromJson(element);
        photos.add(photo);
      });
      return photos;
    } catch(error) {
      print(error);
      return error;
    }
  }

  @override
  Future<Photo> getPhotoDetail(PhotoDetailRequest request) async{
      var response = await NetworkService.networkService.request(request.endpoint, request.method, request.headers);
      try {
        var photo = Photo.fromJson(response);
        return photo;
      } catch (error) {
        print(error);
        return error;
      }
      // return _getPhoto(request);
    }
  
    @override
    Future<Photo> likePhoto(PhotoLikeRequest request) async {
      // var response = await NetworkService.networkService.request(request.endpoint, request.method, request.headers);
      // try {
      //   var photo = Photo.fromJson(response);
      //   return photo;
      // } catch (error) {
      //   print(error);
      //   return error;
      // }
      return _getPhoto(request);
    }
  
    @override
    Future<Photo> unlikePhoto(PhotoUnlikeRequest request) async {
    // var response = await NetworkService.networkService.request(request.endpoint, request.method, request.headers);
    //   try {
    //     var photo = Photo.fromJson(response);
    //     return photo;
    //   } catch (error) {
    //     print(error);
    //     return error;
    //   }
    return _getPhoto(request);
  }

  Future<Photo> _getPhoto(BackendRequest request) async {
    var response = await NetworkService.networkService.request(request.endpoint, request.method, request.headers);
      try {
        var photo = Photo.fromJson(response["photo"]);
        photo.user = User.fromJson(response["user"]);
        return photo;
      } catch (error) {
        print(error);
        return error;
      }
  }

}