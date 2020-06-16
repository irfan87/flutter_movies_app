import 'package:flutter/material.dart';
import 'package:flutter_movies_app/models/movie.dart';
import 'package:flutter_movies_app/ui/movies_listview.dart';

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
      body: Container(
        child: Column(
          children: <Widget>[
            Text(this.movie.title),
            Center(
              child: RaisedButton(
                child: Text('Go Back'),
                onPressed: () => Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoviesListView(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
