import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Icon Button Clicked');
          },
        ),*/
        title: new Text('M4th'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.camera,
            color: Colors.white,
            size: 55.0,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.teal,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text(
                'marchForth Technologies India Pvt Ltd',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: Center(
        child: new Container(
          child: new Text('Welcome to My App'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        child: Icon(Icons.add),
        onPressed: () {
          print('marchForth Technologies');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('marchforth Technologies'),
              accountEmail: Text('info@marchforth.in'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
