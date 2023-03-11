import 'package:flutter/material.dart';

class MenuBar2 extends StatelessWidget {
  const MenuBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60.0,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(18, 18, 18, 0.98),
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: 30.0,
              ),
              Column(
                children: [
                  Icon(
                    Icons.home_filled,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  Text('Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      )),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.search,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  Text('Search',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      )),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.library_music,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  Text('Your Library',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      )),
                ],
              ),
              SizedBox(
                width: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
