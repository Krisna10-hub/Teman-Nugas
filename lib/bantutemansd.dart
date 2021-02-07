import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:temannugas/models/itemsd.dart';

class BantuTemanSD extends StatefulWidget {
  final ItemSD item;
  final String id;

  BantuTemanSD({@required this.item, this.id});

  @override
  _BantuTemanSDState createState() => _BantuTemanSDState();
}

class _BantuTemanSDState extends State<BantuTemanSD> {
  TextEditingController nameController;
  TextEditingController jawabanController;

  @override
  void initState() {
    nameController = TextEditingController();
    jawabanController = TextEditingController();

    nameController.text = '';
    jawabanController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.item != null) {
      nameController.text = widget.item.name;
      jawabanController.text = widget.item.jawaban;
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 25),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Bantu Teman',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.arrow_back),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                children: [
                  TextField(
                    controller: nameController,
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nama',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: jawabanController,
                    keyboardType: TextInputType.number,
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Jawaban',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    height: 45,
                    color: Colors.blue,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {
                      ItemSD item = ItemSD(
                        id: 'SD-01',
                        name: nameController.text,
                        image: '',
                        jawaban: jawabanController.text,
                      );
                      if (widget.item == null) {
                        FirebaseFirestore.instance
                            .collection('itemsd')
                            .add(item.toJson());
                      } else {
                        FirebaseFirestore.instance
                            .collection('itemsd')
                            .doc(widget.id)
                            .update(item.toJson());
                      }
                      Navigator.pop(context);
                    },
                  ),
                  Visibility(
                    visible: widget.item != null ? true : false,
                    child: FlatButton(
                      height: 45,
                      color: Colors.red,
                      child: Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {
                        FirebaseFirestore.instance
                            .collection('itemsd')
                            .doc(widget.id)
                            .delete();
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
