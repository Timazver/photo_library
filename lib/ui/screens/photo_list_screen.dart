import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_library/bloc/photo_list/photo_list_bloc.dart';
import 'package:photo_library/data/repositories/photo_repository_impl.dart';
import 'package:photo_library/ui/widgets/photo_list/photo_list.dart';
import 'package:photo_library/ui/widgets/search_bar.dart';

class PhotoListScreen extends StatefulWidget {
  

  @override
  State<StatefulWidget> createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends State<PhotoListScreen> {

  PhotoListBloc _photoListBloc;
  @override
  void initState() {
    super.initState();
    _photoListBloc = PhotoListBloc(repository: PhotoRepositoryImpl());
    _photoListBloc.add(InitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context)=>_photoListBloc,
          child:Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                SearchBar(),
                SizedBox(height: 40),
                PhotoList(),
                SizedBox(height: 20)
              ],
            )))));
  }

  
}