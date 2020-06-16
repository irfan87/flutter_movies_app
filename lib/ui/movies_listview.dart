import 'package:flutter/material.dart';

class MoviesListView extends StatelessWidget {
  final List movies = [
    "Titanic",
    "I am legend",
    "Pursuit of Happiness",
    "Avengers",
    "Captain America",
    "Iron Man",
    "Thor",
    "Batman",
    "Spiderman",
    "Venom",
    "300",
    "Nujum Pak Belalang",
  ];

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
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            elevation: 4.5,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  child: Text('Test'),
                ),
              ),
              title: Text(movies[index]),
              subtitle: Text(movies[index]),
              trailing: Text('...'),
              onTap: () => debugPrint('Movies Name: ${movies[index]}'),
            ),
          );
        },
      ),
    );
  }
}
