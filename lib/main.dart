import 'package:flutter/material.dart';
import 'package:photo_library/ui/screens/photo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Library',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: PhotoListScreen()
    );
  }
}

