import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_library/bloc/photo_list/photo_list_bloc.dart';
import 'package:photo_library/domain/model/photo.dart';
import 'package:photo_library/ui/screens/photo_detail_screen.dart';
import 'package:photo_library/ui/widgets/photo_list/photo_list_item.dart';

class PhotoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoListBloc, PhotoListState>(
        builder: (context, state) {
          if(state is PhotoListInitial) {
            return Container();
          }
          else if (state is PhotoListEmptyState) {
            return Center(child: Text("No data"));
          } else if(state is PhotoListFetchingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PhotoListFetchedState) {
            return ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoDetailScreen(id: state.photos[index].id))),
                    child: PhotoListItem(photo: state.photos[index])
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
                itemCount: state.photos.length);
          } else if(state is PhotoListErrorState) {
            return Center(child: Text("Произошла неизвестная ошибка"));
          }
        });
  }
}
