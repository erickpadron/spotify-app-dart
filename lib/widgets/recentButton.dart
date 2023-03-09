import 'package:flutter/material.dart';

class RecentButton extends StatelessWidget{
  final String title;
  final Color c;
  const RecentButton({Key? key, required this.title, required this.c}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(left: 10.0, top: 10.0),
      width: MediaQuery.of(context).size.width/2-20,
      height: 65.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(42, 42, 42, 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10.0),
                width: 65.0,
                height: 65.0,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
              ),
              const Expanded(
                child: Text(
                  'Liked Songs',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}