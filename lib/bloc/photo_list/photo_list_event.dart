part of 'photo_list_bloc.dart';

@immutable
abstract class PhotoListEvent {}

class SearchTextChangedEvent extends PhotoListEvent {
  
  final String searchTerm;

  SearchTextChangedEvent({@required this.searchTerm}) : assert(searchTerm != null);
}

class LoadMoreDataEvent extends PhotoListEvent {

  final int page;

  LoadMoreDataEvent({@required this.page}) : assert(page != null);
  
}

class InitialEvent extends PhotoListEvent {
  
}