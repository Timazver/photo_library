import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_library/bloc/photo_detail/bloc/photo_detail_bloc.dart';
import 'package:photo_library/data/repositories/photo_repository_impl.dart';
import 'package:photo_library/ui/styles/custom_text_style.dart';
import 'package:photo_library/ui/widgets/photo_detail/photo_detail.dart';

class PhotoDetailScreen extends StatefulWidget {
  final String id;

  PhotoDetailScreen({this.id});

  @override
  State<StatefulWidget> createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends State<PhotoDetailScreen> {
  PhotoDetailBloc _photoDetailBloc;

  @override
  void initState() {
    super.initState();
    _photoDetailBloc = PhotoDetailBloc(repository: PhotoRepositoryImpl());
    _photoDetailBloc.add(PhotoDetailInitialEvent(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => _photoDetailBloc,
        child: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                bottomOpacity: 0.0,
                elevation: 0.0,
                leading:GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back, color: Colors.grey)
                ),
                title: Text("Photo", style: CustomTextStyle.appBarTitle)),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: PhotoDetail())));
  }
}
