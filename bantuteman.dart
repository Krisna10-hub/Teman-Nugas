import 'package:flutter/material.dart';
import 'package:temannugas/home/kuliah.dart';
import 'package:temannugas/home/smasmk.dart';
import 'package:temannugas/home/sd.dart';
import 'package:temannugas/home/smp.dart';

class BantuTeman extends StatefulWidget {
  @override
  _BantuTeman createState() => _BantuTeman();
}

class _BantuTeman extends State<BantuTeman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        brightness: Brightness.dark,
        title: Text('JENJANG PENDIDIKAN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              child: Container(
                margin: new EdgeInsets.only(
                  bottom: 10,
                  top: 10,
                  right: 20,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(5),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.topLeft,
                          height: 100,
                          image: NetworkImage(
                              'https://1.bp.blogspot.com/-ul1cfcq1BLw/X98DsaA4HJI/AAAAAAAAAUE/ySuVqO-lKh0rjFQ11TVfGGHITk_znXt9ACNcBGAsYHQ/tnlogo1.jpeg'),
                        ),
                      ),
                    ),
                    Container(
                      margin: new EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                        bottom: 15,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'SD',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SD(),
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                margin: new EdgeInsets.only(
                  bottom: 10,
                  top: 10,
                  right: 20,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(5),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.topLeft,
                          height: 100,
                          image: NetworkImage(
                              'https://1.bp.blogspot.com/-ul1cfcq1BLw/X98DsaA4HJI/AAAAAAAAAUE/ySuVqO-lKh0rjFQ11TVfGGHITk_znXt9ACNcBGAsYHQ/tnlogo1.jpeg'),
                        ),
                      ),
                    ),
                    Container(
                      margin: new EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                        bottom: 15,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'SMP',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
            InkWell(
              child: Container(
                margin: new EdgeInsets.only(
                  bottom: 10,
                  top: 10,
                  right: 20,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(5),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.topLeft,
                          height: 100,
                          image: NetworkImage(
                              'https://1.bp.blogspot.com/-ul1cfcq1BLw/X98DsaA4HJI/AAAAAAAAAUE/ySuVqO-lKh0rjFQ11TVfGGHITk_znXt9ACNcBGAsYHQ/tnlogo1.jpeg'),
                        ),
                      ),
                    ),
                    Container(
                      margin: new EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                        bottom: 15,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'SMA/SMK/MA',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SMASMK(),
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                margin: new EdgeInsets.only(
                  bottom: 10,
                  top: 10,
                  right: 20,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(5),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.topLeft,
                          height: 100,
                          image: NetworkImage(
                              'https://1.bp.blogspot.com/-ul1cfcq1BLw/X98DsaA4HJI/AAAAAAAAAUE/ySuVqO-lKh0rjFQ11TVfGGHITk_znXt9ACNcBGAsYHQ/tnlogo1.jpeg'),
                        ),
                      ),
                    ),
                    Container(
                      margin: new EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                        bottom: 15,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'KULIAH',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KULIAH(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
