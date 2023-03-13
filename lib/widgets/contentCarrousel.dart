import 'package:flutter/material.dart';
import 'package:spotify_app_dart/widgets/albumImage.dart';


class ContentCarrousel extends StatelessWidget {
  final AlbumImage albumCover1;
  final AlbumImage albumCover2;
  final AlbumImage albumCover3;
  final String title;
  const ContentCarrousel({Key ? key, required this.albumCover1, required this.albumCover3, required this.albumCover2, required this.title}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0.0, bottom: 10.0, left: 10.0, right: 10.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 5.0, bottom: 10.0),
              child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ))),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                albumCover1,
                albumCover2,
                albumCover3,
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
