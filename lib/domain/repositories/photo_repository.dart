
import 'package:photo_library/data/datastore/network/model/requests/photo_detail_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_like_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_list_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_unlike_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photos_request.dart';
import 'package:photo_library/domain/model/photo.dart';

abstract class PhotoRepository {

  Future<List<Photo>> getPhotosByKey(PhotoListRequest request);
  Future<List<Photo>> getPhotos(PhotosRequest request);
  Future<Photo> getPhotoDetail(PhotoDetailRequest request);
  Future<Photo> likePhoto(PhotoLikeRequest request);
  Future<Photo> unlikePhoto(PhotoUnlikeRequest request);
}