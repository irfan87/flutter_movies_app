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
      backgroundColor: Colors.amber.shade300,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              movieCard(movieList[index], context),
              Positioned(
                top: 10.0,
                left: 4.0,
                child: movieImage(movieList[index].images[0]),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MovieDetails(
            movieName: movie.title,
            movie: movie,
          ),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 60.0),
        width: MediaQuery.of(context).size.width,
        height: 121.0,
        child: Card(
          color: Colors.amber.shade100,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 44.0),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          movie.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      Text(movie.rated),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          'IMDB Rating: ${movie.imdbRating} / 10',
                          style: mainTextStyle(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Released: ${movie.released}'),
                      Text(movie.runtime),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextStyle mainTextStyle() {
    return TextStyle(
      fontSize: 15.0,
      color: Colors.green,
    );
  }

  Widget movieImage(String imageURL) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageURL ?? Icon(Icons.help)),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
