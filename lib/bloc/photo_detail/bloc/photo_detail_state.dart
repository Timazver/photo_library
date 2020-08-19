part of 'photo_detail_bloc.dart';

@immutable
abstract class PhotoDetailState {}

class PhotoDetailInitial extends PhotoDetailState {}

class PhotoDetailFetchingState extends PhotoDetailState {}

class PhotoDetailFetchedState extends PhotoDetailState {

  final Photo photo;
  final bool liked;

  PhotoDetailFetchedState({@required this.photo, this.liked = false});

}

class PhotoDetailErrorState extends PhotoDetailState {

}