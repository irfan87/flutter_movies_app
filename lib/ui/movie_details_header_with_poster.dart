import 'package:flutter/material.dart';
import 'package:flutter_movies_app/models/movie.dart';
import 'package:flutter_movies_app/ui/movie_poster.dart';

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movie movie;

  const MovieDetailsHeaderWithPoster({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        children: <Widget>[
          MoviePoster(poster: movie.images[0].toString()),
        ],
      ),
    );
  }
}
