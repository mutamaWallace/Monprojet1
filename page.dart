import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Here, we show the menu page",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            bottomNavigationBar: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.person_outline_rounded)),
                Tab(icon: Icon(Icons.picture_as_pdf_sharp)),
                Tab(icon: Icon(Icons.group))
              ],
            ),
            drawer: const Drawer(
              child: Column(
                children: [
                  Text('item1'),
                  Divider(height: 9.0),
                  Text('item2'),
                  Divider(height: 9.0),
                  homepage(),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Center(child: homepage()),
                Center(child: Text("hello")),
                Center(child: Text("hello")),
                Center(child: Text("hello"))
              ],
            )),
      ),
    );
  }
}
