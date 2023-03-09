import 'package:flutter/material.dart';
import 'package:spotify_app_dart/widgets/recentButton.dart';

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
        backgroundColor: Colors.black87,
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
      body: Column(
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
                    title: 'Loke',
                    c: Colors.red,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, top: 10.0),
                    width: MediaQuery.of(context).size.width/2-20,
                    height: 65.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(42, 42, 42, 1),
                      borderRadius: BorderRadius.circular(radiusRecent),
                    ),
                    child: Center(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 65.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(radiusRecent),
                                  bottomLeft: Radius.circular(radiusRecent),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'Musculok 2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, top: 7.0),                    width: MediaQuery.of(context).size.width/2-20,
                    height: 65.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(42, 42, 42, 1),
                      borderRadius: BorderRadius.circular(radiusRecent),
                    ),
                    child: Center(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 65.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(radiusRecent),
                                  bottomLeft: Radius.circular(radiusRecent),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'This is Kim Petras',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, top: 7.0),
                    width: MediaQuery.of(context).size.width/2-20,
                    height: 65.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(42, 42, 42, 1),
                      borderRadius: BorderRadius.circular(radiusRecent),
                    ),
                    child: Center(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 65.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(radiusRecent),
                                  bottomLeft: Radius.circular(radiusRecent),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                '2010s Mix',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, top: 7.0),
                    width: MediaQuery.of(context).size.width/2-20,
                    height: 65.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(42, 42, 42, 1),
                      borderRadius: BorderRadius.circular(radiusRecent),
                    ),
                    child: Center(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 65.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(radiusRecent),
                                  bottomLeft: Radius.circular(radiusRecent),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'On Repeat',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, top: 7.0),
                    width: MediaQuery.of(context).size.width/2-20,
                    height: 65.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(42, 42, 42, 1),
                      borderRadius: BorderRadius.circular(radiusRecent),
                    ),
                    child: Center(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 65.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(radiusRecent),
                                  bottomLeft: Radius.circular(radiusRecent),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'Mr. Morale & The Big Steppers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.red[600],
            width: MediaQuery.of(context).size.width,
            height: 250.0,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 48.0,
            height: 48.0,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 48.0,
            height: 48.0,
          ),
        ],
      ),
      backgroundColor: Colors.black87,
    );
  }
}
