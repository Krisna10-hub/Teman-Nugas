import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:temannugas/home/bantutemansmp.dart';

import 'package:temannugas/home/card_itemsmp.dart';
import 'package:temannugas/models/itemsmp.dart';

class SMP extends StatefulWidget {
  @override
  _SMPState createState() => _SMPState();
}

class _SMPState extends State<SMP> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: Text('Teman Nugas',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    child: Image.asset(
                      'asset/image/SoalSMP.jpg',
                      height: 175,
                      width: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(Icons.upload_file),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SMP(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Bantu Teman',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(Icons.question_answer),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BantuTemanSMP(
                            item: null,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            Container(
              height: 300,
              padding: EdgeInsets.all(5),
              color: Colors.white,
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('itemsmp')
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView(
                    scrollDirection: Axis.vertical,
                    children: snapshot.data.docs.map((document) {
                      ItemSMP item = ItemSMP(
                        id: document['id'],
                        name: document['name'],
                        image: document['image'],
                        jawaban: document['jawaban'],
                      );
                      return InkWell(
                        child: CardItemSMP(item: item),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BantuTemanSMP(
                                item: item,
                                id: document.id,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
