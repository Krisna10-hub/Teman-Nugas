import 'package:flutter/material.dart';
import 'package:temannugas/models/itemsd.dart';

class CardItemSD extends StatefulWidget {
  final ItemSD item;

  CardItemSD({@required this.item});

  @override
  _CardItemSDState createState() => _CardItemSDState();
}

class _CardItemSDState extends State<CardItemSD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
              widget.item.jawaban,
              style: TextStyle(fontSize: 12, color: Colors.black),
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
