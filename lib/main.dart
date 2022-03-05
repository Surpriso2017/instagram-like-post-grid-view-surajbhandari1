import 'package:flutter/material.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavBar(
      actionButton: CurvedActionBar(
          onTab: (value) {
            /// perform action here
            print(value);
          },
          activeIcon: Container(
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Icon(
              Icons.camera_alt,
              size: 50,
              color: Colors.orange,
            ),
          ),
          inActiveIcon: Container(
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 50,
              color: Colors.orange,
            ),
          ),
          text: "Camera"),
      activeColor: Colors.blue,
      navBarBackgroundColor: Colors.limeAccent,
      inActiveColor: Colors.black45,
      appBarItems: [
        FABBottomAppBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            inActiveIcon: Icon(
              Icons.home,
              color: Colors.black26,
            ),
            text: 'Home'),
        FABBottomAppBarItem(
            activeIcon: Icon(
              Icons.wallet_giftcard,
              color: Colors.blue,
            ),
            inActiveIcon: Icon(
              Icons.person,
              color: Colors.black26,
            ),
            text: 'Profile'),
      ],
      bodyItems: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.blue,
        ),
        // Container(
        //wallet starts..
        GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,

          // Generate 100 widgets that display their index in the List.
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("1.jpg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("2.jpeg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("1.jpg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("2.jpeg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("1.jpg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("2.jpeg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("1.jpg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("2.jpeg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("1.jpg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("2.jpeg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("1.jpg")),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("2.jpeg")),
          ],
          //wallet ends...
        ),
      ],
      actionBarView: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
      ),
    );
  }
}
