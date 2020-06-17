import 'package:flutter/material.dart';

import 'package:flutter_movies_app/models/movie.dart';
import 'package:flutter_movies_app/ui/movie_field.dart';

class MovieDetailsCast extends StatelessWidget {
  final Movie movie;

  const MovieDetailsCast({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          MovieField(
            field: 'Cast',
            value: movie.actors,
          ),
          MovieField(
            field: 'Director',
            value: movie.director,
          ),
          MovieField(
            field: 'Writer',
            value: movie.writer,
          ),
          MovieField(
            field: 'Awards',
            value: movie.awards,
          ),
          MovieField(
            field: 'Language',
            value: movie.language,
          ),
          MovieField(
            field: 'IMDB Ratings',
            value: movie.imdbRating,
          ),
        ],
      ),
    );
  }
}
