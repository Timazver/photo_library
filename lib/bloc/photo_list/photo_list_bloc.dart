import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo_library/data/datastore/network/model/requests/photo_list_request.dart';
import 'package:photo_library/data/datastore/network/model/requests/photos_request.dart';
import 'package:photo_library/domain/model/photo.dart';
import 'package:photo_library/domain/repositories/photo_repository.dart';

part 'photo_list_event.dart';
part 'photo_list_state.dart';

class PhotoListBloc extends Bloc<PhotoListEvent, PhotoListState> {

  final PhotoRepository repository;
  // final 

  PhotoListBloc({this.repository}) : super(PhotoListInitial());

  @override
  void onTransition(Transition<PhotoListEvent, PhotoListState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  PhotoListState get initialState => PhotoListInitial();

  @override
  Stream<PhotoListState> mapEventToState(
    PhotoListEvent event,
  ) async* {
    yield PhotoListFetchingState();
    List<Photo> photos;
    try {
      if(event is SearchTextChangedEvent) {
        PhotoListRequest request = PhotoListRequest(query: event.searchTerm);
        photos = await repository.getPhotosByKey(request);
        yield PhotoListFetchedState(photos: photos);
      } else if(event is InitialEvent) {
        PhotosRequest request = PhotosRequest();
        photos = await repository.getPhotos(request);
        yield PhotoListFetchedState(photos: photos);
      }
      if(photos.length == 0) {
        yield PhotoListEmptyState();
      }
    } catch(error) {
      print(error);
      yield PhotoListErrorState();
    }
  }
}
