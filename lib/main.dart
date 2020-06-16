import 'package:flutter/material.dart';
import 'package:flutter_movies_app/ui/movies_page.dart';

void main() => runApp(MoviesApp());

class MoviesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoviesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
