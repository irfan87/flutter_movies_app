import 'package:flutter/material.dart';
import 'package:flutter_movies_app/models/movie.dart';
import 'package:flutter_movies_app/ui/movie_details_thumbnail.dart';
import 'package:flutter_movies_app/ui/movie_details_header_with_poster.dart';

class MovieDetails extends StatelessWidget {
  final String movieName;

  final Movie movie;

  const MovieDetails({Key key, this.movieName, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieName),
        backgroundColor: Colors.amber.shade600,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          MovieDetailsThumbnail(
            thumbnail: movie.images[0],
          ),
          MovieDetailsHeaderWithPoster(
            movie: movie,
          ),
        ],
      ),
    );
  }
}
