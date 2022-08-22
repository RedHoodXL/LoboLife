import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String name;
  final String perfil;
  final String photo;
  final String time;

  const Post(
      {required this.name,
      required this.photo,
      required this.time,
      required this.perfil});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5, bottom: 30.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/$photo'),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/$perfil'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(this.name),
                      Text(this.time, style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              spreadRadius: 2.0)
                        ]),
                    child: Icon(Icons.send_outlined),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              spreadRadius: 2.0)
                        ]),
                    child: Icon(Icons.favorite_border, color: Colors.black54),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
