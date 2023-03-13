import 'package:flutter/material.dart';
import 'package:spotify_app_dart/widgets/recentButton.dart';
import 'package:spotify_app_dart/widgets/newRelease.dart';
import 'package:spotify_app_dart/widgets/menuBar2.dart';
import 'package:spotify_app_dart/widgets/currentPlaying.dart';
import 'package:spotify_app_dart/widgets/contentCarrousel.dart';
import 'package:spotify_app_dart/widgets/albumImage.dart';

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

                const ContentCarrousel(
                  title: 'Episodes for you',
                  albumCover1: AlbumImage(
                    title: 'Enchiladex',
                    albumCover: AssetImage('images/enchiladex.jpg'),
                    description: 'Show - LaH. Plataforma',
                  ),
                  albumCover2: AlbumImage(
                    title: 'The Last Of Us',
                    albumCover: AssetImage('images/theLastOfUs.jpg'),
                    description: 'Show - Ray Contreras',
                  ),
                  albumCover3: AlbumImage(
                    title: 'Podlogical',
                    albumCover: AssetImage('images/podlogical.jpg'),
                    description: 'Show - equis',
                  ),
                ),
               const ContentCarrousel(
                  title: 'Your top mixes',
                  albumCover1: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/mixpop.jpg'),
                    description: 'Dua Lipa, MO, MARINA',
                  ),
                  albumCover2: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/mixAlegre.jpg'),
                    description: 'Lizzo, Ariana Grande, Z...',
                  ),
                  albumCover3: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/mixkpop.jpg'),
                    description: 'NewJeans, LOONA, STAYC',
                  ),
                ),
                const ContentCarrousel(
                  title: 'Best of artists',
                  albumCover1: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/thisIsMarina.jpg'),
                    description: 'This is MARINA, The ess...',
                  ),
                  albumCover2: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/thisIsMitski.jpg'),
                    description: 'This is Mitski. The ess...',
                  ),
                  albumCover3: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/thisIsDojaCat.jpg'),
                    description: 'The Weeknd,  SZA, Araiana',
                  ),
                ),
                const ContentCarrousel(
                  title: 'Emo is\'nt just a phasse',
                  albumCover1: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/thisIsParamore.jpg'),
                    description: 'This is Paramore. The ess...',
                  ),
                  albumCover2: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/thisIsPATD.jpg'),
                    description: 'This is Panic! At the Disco',
                  ),
                  albumCover3: AlbumImage(
                    title: '',
                    albumCover: AssetImage('images/thisIsAvrilLavigne.jpg'),
                    description: 'This is Avril Lavigne',
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
