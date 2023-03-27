import 'package:flutter/material.dart';
import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña TabBar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.black),
            indicatorWeight: 10,
            tabs: [
              Tab(icon: Icon(Icons.account_box_outlined)),
              Tab(icon: Icon(Icons.add_to_queue_outlined)),
              Tab(icon: Icon(Icons.screen_lock_portrait_rounded)),
              Tab(icon: Icon(Icons.keyboard_hide_rounded)),
            ],
          ),
          centerTitle: true,
          title: Text('GARDENING BUSSINESS'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.account_box_outlined, size: 350),
            Icon(Icons.add_to_queue_outlined, size: 350),
            Icon(Icons.screen_lock_portrait_rounded, size: 350),
            Icon(Icons.keyboard_hide_rounded, size: 350),
          ],
        ),
      ),
    );
  }
}
