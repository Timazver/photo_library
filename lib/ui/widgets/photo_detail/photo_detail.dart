import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_library/bloc/photo_detail/bloc/photo_detail_bloc.dart';
import 'package:photo_library/ui/widgets/components/image_container.dart';
import 'package:photo_library/ui/widgets/components/user_card.dart';
import 'package:photo_library/ui/widgets/photo_list/photo_likes_view.dart';

class PhotoDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PhotoDetailState();
}

class _PhotoDetailState extends State<PhotoDetail> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoDetailBloc, PhotoDetailState>(
        builder: (context, state) {
      if (state is PhotoDetailInitial) {
        return Container();
      } else if (state is PhotoDetailFetchingState) {
        return Center(child: CircularProgressIndicator());
      } else if (state is PhotoDetailFetchedState) {
        return Column(children: [
          SizedBox(height: 20),
          ImageContainer(photo: state.photo),
          SizedBox(height: 20),
          UserCard(user: state.photo.user),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => {
                   if(state.liked) {
                     BlocProvider.of<PhotoDetailBloc>(context).add(PhotoUnlikeEvent(id: state.photo.id))
                   } else {
                     BlocProvider.of<PhotoDetailBloc>(context).add(PhotoLikeEvent(id: state.photo.id))
                   }
                },
                child: PhotoLikesView(likesCount: state.photo.likes)))
        ]);
      } else if (state is PhotoDetailErrorState) {
        return Center(child: Text("Произошла неизвестная ошибка"));
      }
    });
  }
}
