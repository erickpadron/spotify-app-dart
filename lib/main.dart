import 'package:flutter/material.dart';
import 'package:spotify_app_dart/widgets/recentButton.dart';
import 'package:spotify_app_dart/widgets/newRelease.dart';
import 'package:spotify_app_dart/widgets/albumImage.dart';
import 'package:spotify_app_dart/widgets/menuBar2.dart';
import 'package:spotify_app_dart/widgets/currentPlaying.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Good evening'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double radiusRecent = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        title: const Row(
          children: [
            SizedBox(width: 10.0),
            Text(
              'Good evening',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(Icons.notifications_none, color: Colors.white),
            SizedBox(width: 15.0),
            Icon(Icons.access_time, color: Colors.white),
            SizedBox(width: 15.0),
            Icon(Icons.settings, color: Colors.white),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 80.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(42, 42, 42, 1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Music',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 160.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(42, 42, 42, 1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Podcasts & Shows',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Cuadro de recientes
                Column(
                  children: [
                    Row(
                      children: [
                        RecentButton(
                          key: UniqueKey(),
                          title: 'Liked Songs',
                          background: const AssetImage('images/likedSongs.png'),
                        ),
                        RecentButton(
                          key: UniqueKey(),
                          title: 'Musculok 2',
                          background: const AssetImage('images/musculok.jpg'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RecentButton(
                          key: UniqueKey(),
                          title: 'This is Kim Petras',
                          background:
                              const AssetImage('images/thisIsKimPetras.jpg'),
                        ),
                        RecentButton(
                          key: UniqueKey(),
                          title: '2010s Mix',
                          background: const AssetImage('images/2010sMix.jpg'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RecentButton(
                          key: UniqueKey(),
                          title: 'On Repeat',
                          background: const AssetImage('images/onRepeat.jpg'),
                        ),
                        RecentButton(
                          key: UniqueKey(),
                          title: 'Mr. Morale & The Big Steppers',
                          background: const AssetImage('images/mrMorale.jpg'),
                        ),
                      ],
                    ),
                  ],
                ),
                const NewRelease(
                  artist: 'Ashnikko',
                  artistImage: AssetImage('images/ashnikko.jpg'),
                  albumCover: AssetImage('images/worms.jpg'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0.0, bottom: 10.0, left: 10.0, right: 10.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, top: 5.0, bottom: 10.0),
                          child: Text('Episodes for you',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                              ))),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            AlbumImage(
                              albumCover: AssetImage('images/enchiladex.jpg'),
                            ),
                            AlbumImage(
                              albumCover: AssetImage('images/theLastOfUs.jpg'),
                            ),
                            AlbumImage(
                              albumCover: AssetImage('images/podlogical.jpg'),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 200.0,),
              ],
            ),
          ),
          // Current Playing
          const CurrentPlaying(
            albumCover: AssetImage('images/planetHer.png',),
            artist: 'Doja Cat',
            title: 'Get Into It (Yuh)',
          ),
          // Barra menu
          const MenuBar2(),
        ],
      ),
      backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
    );
  }
}
