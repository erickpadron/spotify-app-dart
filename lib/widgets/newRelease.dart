import 'package:flutter/material.dart';

class NewRelease extends StatelessWidget {
  final String artist;
  const NewRelease({Key? key, required this.artist}): super(key: key);
  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 10.0, left: 10.0, right: 10.0),
      color: Colors.black87,
      width: MediaQuery.of(context).size.width,
      height: 250.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New release from',
                    style: TextStyle(
                      color: Color.fromRGBO(179, 179, 179, 1),
                      fontSize: 11.0,
                    ),
                  ),
                  Text(
                    artist,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            width: 400.0,
            height: 160,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(42, 42, 42, 1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(106, 119, 137, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 5.0,
                          right: 10.0,
                          left: 10.0,
                          top: 10.0),
                      child: Text(
                        'Worms',
                        style: TextStyle(
                          fontSize: 12.6,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10.0,
                          right: 10.0,
                          left: 10.0),
                      child: Text(
                        'Single \u00B7 $artist',
                        style: const TextStyle(
                          fontSize: 12.6,
                          color: Color.fromRGBO(179, 179, 179, 1),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 55.0,
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          SizedBox(
                            width: 130.0,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 35.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}