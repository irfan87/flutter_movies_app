import 'package:flutter/material.dart';
import 'package:flutter_movies_app/ui/movie_details.dart';
import 'package:flutter_movies_app/models/movie.dart';

class MoviesListView extends StatelessWidget {
  final List<Movie> movieList = Movie.getMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        backgroundColor: Colors.amber.shade600,
        centerTitle: true,
      ),
      backgroundColor: Colors.amber.shade200,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            elevation: 4.5,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(movieList[index].images[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: null,
                ),
              ),
              title: Text(movieList[index].title),
              subtitle: Text(movieList[index].genre),
              trailing: Text('...'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetails(
                      movieName: movieList[index].title,
                      movie: movieList[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
