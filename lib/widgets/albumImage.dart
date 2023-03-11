import 'package:flutter/material.dart';

class AlbumImage extends StatelessWidget {
  const AlbumImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(5.0),
      ),

    );
  }
}
