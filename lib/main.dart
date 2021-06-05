import 'package:flutter/material.dart';
import 'package:vuphamcongminh/form.dart';

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
      home: MyHomePage(title: 'ListView Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView(
          padding: const EdgeInsets.all(8),
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                leading: Column(
                  children: [
                    Container(
                      child: Center(
                          child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      )),
                      width: 35,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                    Icon(Icons.do_not_disturb_on),
                  ],
                ),
                title: Text(
                  'Create Flutter Tutorials',
                  style: TextStyle(
                      color: Colors.red.shade200, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Build SQLite App with sqflite plugin',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              ListTile(
                leading: Column(
                  children: [
                    Container(
                      child: Center(
                          child: Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      )),
                      width: 35,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                    Icon(Icons.do_not_disturb_on),
                  ],
                ),
                title: Text(
                  'Research Mobile Dev',
                  style: TextStyle(
                      color: Colors.red.shade200, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Read more cross-platforms',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              ListTile(
                leading: Column(
                  children: [
                    Container(
                      child: Center(
                          child: Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      )),
                      width: 35,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                    Icon(Icons.do_not_disturb_on),
                  ],
                ),
                title: Text(
                  'Reply Comments',
                  style: TextStyle(
                      color: Colors.red.shade200, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Check some comment on Flutter Posts and reply',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormAdd()),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
