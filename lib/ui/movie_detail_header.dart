import 'package:flutter/material.dart';
import 'package:flutter_movies_app/models/movie.dart';

class MovieDetailHeader extends StatelessWidget {
  final Movie movie;

  const MovieDetailHeader({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${movie.year} | ${movie.genre}'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.indigoAccent,
          ),
        ),
        Text(
          '${movie.title}',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 32.0,
          ),
        ),
        Divider(),
        Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300),
            children: <TextSpan>[
              TextSpan(text: movie.plot),
              TextSpan(
                text: '\n\nMore...',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
