import 'package:flutter/material.dart';
import 'package:bottom_navigation_scaffold/bottom_navigation_scaffold.dart';

class MyNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RootWidget());
  }
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationScaffold(
      bottomNavigationBarBuilder: (context, tabs, currentIndex, signalUpdate) {
        return BottomNavigationBar(
          onTap: (i) => signalUpdate(i),
          items: tabs,
          currentIndex: currentIndex,
        );
      },
      pageDetails: [
        PageDetail(
          pageAppBar: AppBar(
            key: Key("Home"),
            title: Text('Home'),
          ),
          page: PageWidget(title: 'Home'),
          tab: BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          floatingActionButton: FloatingActionButton(
            key: Key("Home"),
            onPressed: () {},
            tooltip: 'Home',
            child: Icon(Icons.share),
          ),
        ),
        PageDetail(
          pageAppBar: AppBar(
            key: Key("My Networks"),
            title: Text('My Network'),
          ),
          page: PageWidget(title: 'Teman Nugas'),
          tab: BottomNavigationBarItem(
              icon: Icon(Icons.people), label: "My Network"),
          floatingActionButton: FloatingActionButton(
            key: Key("My Network"),
            onPressed: () {},
            tooltip: 'My Network',
            child: Icon(Icons.add),
          ),
        ),
        PageDetail(
          pageAppBar: AppBar(
            key: Key("Profile"),
            title: Text('Profile'),
          ),
          page: PageWidget(title: 'Profile'),
          tab: BottomNavigationBarItem(
              icon: Icon(Icons.contact_page), label: "Profile"),
        ),
      ],
    );
  }
}

class PageWidget extends StatelessWidget {
  PageWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
