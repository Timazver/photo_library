import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_library/bloc/photo_list/photo_list_bloc.dart';
import 'package:photo_library/ui/colors/custom_colors.dart';
import 'package:photo_library/ui/styles/custom_text_style.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: CustomColors.searchBarBG,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: TextField(
        onChanged: (term) {
          BlocProvider.of<PhotoListBloc>(context)
              .add(SearchTextChangedEvent(searchTerm: term));
        },
        style: CustomTextStyle.searchBarTitle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          hintStyle: CustomTextStyle.searchBarTitle ,
          hintText: 'Search',
          prefixIcon: Icon(
            Icons.search,
            size: 30.0,
            color: CustomColors.searchBarIcon,
          ),
        ),
      ),
    );
  }
}
