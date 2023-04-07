import 'package:flutter/material.dart';
import 'package:top10_movies/online_game.dart';
import 'package:top10_movies/offline_game.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(left: 20.0),
      children: <Widget>[
        SizedBox(height: 15.0),
        Text('Top เกมที่มีผู้เล่นมากที่สุด',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.indigo.shade500,
                fontSize: 36.0,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 15.0),
        TabBar(
            controller: _tabController,
            labelColor: Color(0xFFFFFFFF),
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.grey),
            unselectedLabelColor: Color(0xFF212121),
            tabs: [
              Tab(
                child: Text('เกมออนไลน์',
                    style:
                        TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text('เกมออฟไลน์',
                    style:
                        TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold)),
              ),
            ]),
        Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: [
              TVShows(),
              Movie(),
            ]))
      ],
    ));
  }
}
