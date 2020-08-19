part of 'photo_list_bloc.dart';

@immutable
abstract class PhotoListState {}

class PhotoListInitial extends PhotoListState {
}

class PhotoListFetchingState extends PhotoListState {}

class PhotoListFetchedState extends PhotoListState {

  final List<Photo> photos;
  PhotoListFetchedState({@required this.photos});

}

class PhotoListErrorState extends PhotoListState {

}
class PhotoListEmptyState extends PhotoListState {
  
}
