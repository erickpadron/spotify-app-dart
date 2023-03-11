import 'package:flutter/material.dart';

class AlbumImage extends StatelessWidget {
  final AssetImage albumCover;
  const AlbumImage({Key ? key, required this.albumCover}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
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

    );
  }
}
