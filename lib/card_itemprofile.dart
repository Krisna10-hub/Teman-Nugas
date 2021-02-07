import 'package:flutter/material.dart';
import 'package:temannugas/models/itemprofile.dart';

class CardItemProfile extends StatefulWidget {
  final ItemProfile item;

  CardItemProfile({@required this.item});

  @override
  _CardItemProfileState createState() => _CardItemProfileState();
}

class _CardItemProfileState extends State<CardItemProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      margin: EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child: Image.asset(
              'asset/image/Profile.jpg',
              height: 180,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.item.name,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.item.jenjang,
              style: TextStyle(fontSize: 12, color: Colors.black),
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
