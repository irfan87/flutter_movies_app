import 'package:flutter/material.dart';

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies List'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Movies List Body'),
      ),
    );
  }
}
