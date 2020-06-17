import 'package:flutter/material.dart';

class MovieExtraPosters extends StatelessWidget {
  final List<String> posters;

  const MovieExtraPosters({Key key, this.posters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 3.0,
              left: 8.0,
            ),
            child: Text(
              'More movie posters'.toUpperCase(),
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: 160.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(posters[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 8.0,
              ),
              itemCount: posters.length,
            ),
          ),
        ],
      ),
    );
  }
}
