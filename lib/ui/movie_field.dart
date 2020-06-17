import 'package:flutter/material.dart';

class MovieField extends StatelessWidget {
  final String field;
  final String value;

  const MovieField({Key key, this.field, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$field: \n',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 15.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
