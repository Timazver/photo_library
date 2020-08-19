import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_detail_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_like_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_unlike_request.dart';
import 'package:photo_library/domain/model/photo.dart';
import 'package:photo_library/domain/repositories/photo_repository.dart';

part 'photo_detail_event.dart';
part 'photo_detail_state.dart';

class PhotoDetailBloc extends Bloc<PhotoDetailEvent, PhotoDetailState> {

  final PhotoRepository repository;

  PhotoDetailBloc({this.repository}) : super(PhotoDetailInitial());

  @override
  PhotoDetailState get initialState => PhotoDetailInitial();

  @override
  void onTransition(Transition<PhotoDetailEvent, PhotoDetailState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  Stream<PhotoDetailState> mapEventToState(
    PhotoDetailEvent event,
  ) async* {
    yield PhotoDetailFetchingState();
    Photo photo;
    try {
      if(event is PhotoDetailInitialEvent) {
        PhotoDetailRequest request = PhotoDetailRequest(id: event.id);
        photo = await repository.getPhotoDetail(request);
         yield PhotoDetailFetchedState(photo: photo);
      } else if(event is PhotoLikeEvent) {
        PhotoLikeRequest request = PhotoLikeRequest(id: event.id);
        photo = await repository.likePhoto(request);
        yield PhotoDetailFetchedState(photo: photo, liked: true);
      } else if(event is PhotoUnlikeEvent) {
        PhotoUnlikeRequest request = PhotoUnlikeRequest(id: event.id);
        photo = await repository.unlikePhoto(request);
        yield PhotoDetailFetchedState(photo: photo, liked: false);
      }
    } catch (error) {
      print(error);
      yield PhotoDetailErrorState();
    }
  }
}
