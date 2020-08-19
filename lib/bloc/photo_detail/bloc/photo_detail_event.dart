part of 'photo_detail_bloc.dart';

@immutable
abstract class PhotoDetailEvent {}

class PhotoDetailInitialEvent extends PhotoDetailEvent {
  final String id;

  PhotoDetailInitialEvent({this.id}) : assert(id != null);
}

class PhotoLikeEvent extends PhotoDetailEvent {

  final String id;

  PhotoLikeEvent({this.id}) : assert(id != null);
}

class PhotoUnlikeEvent extends PhotoDetailEvent {

final String id;

  PhotoUnlikeEvent({this.id}) : assert(id != null);
}