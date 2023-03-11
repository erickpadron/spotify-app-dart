import 'package:flutter/material.dart';

class CurrentPlaying extends StatelessWidget {
  final AssetImage albumCover;
  final String title;
  final String artist;

  const CurrentPlaying(
      {Key? key,
      required this.albumCover,
      required this.title,
      required this.artist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 61.0,
      left: 10.0,
      right: 10.0,
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        height: 60.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(9, 24, 45, 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            // Row con imagen, titulo, artista, dispositivos y pausa
            Row(
              children: [
                Container(
                  width: 45.0,
                  height: 45.0,
                  margin: EdgeInsets.only(left: 7.0, top: 7.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      image: DecorationImage(
                        image: albumCover,
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 14.0),
                      ),
                      Text(
                        artist,
                        style: const TextStyle(
                          color: Color.fromRGBO(179, 179, 179, 1),
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(Icons.devices, color: Colors.white, size: 25),
                const SizedBox(width: 20.0),
                const Icon(Icons.pause, color: Colors.white, size: 28),
                const SizedBox(width: 10.0),
              ],
            ),
            // container con la barra de progreso
            Container(
              margin: const EdgeInsets.only(top: 1),
              width: MediaQuery.of(context).size.width-40,
              height: 2.0,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                borderRadius: BorderRadius.circular(1.0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
