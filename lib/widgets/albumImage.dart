import 'package:flutter/material.dart';

class AlbumImage extends StatelessWidget {
  final AssetImage albumCover;
  final String description;
  final String title;

  const AlbumImage(
      {Key? key,
      required this.albumCover,
      required this.description,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: albumCover,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        Visibility(
          visible: title != '',
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            color: Color.fromRGBO(179, 179, 179, 1),
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
