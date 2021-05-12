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
        /*actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],*/
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
          child: new Text(
            'Welcome to My App',
            style: TextStyle(color: Colors.white),
          ),
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
                child: Text('M4th'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('M'),
                )
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        RaisedButton(
          elevation: 5.5,
          onPressed: () {
            print('Clicked');
          },
          color: Colors.orange,
          child: Icon(Icons.add),
        ),
        RaisedButton(
          elevation: 5.5,
          onPressed: () {
            print('Clicked');
          },
          color: Colors.green,
          child: Icon(Icons.clear),
        )
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Search'), icon: Icon(Icons.search)),
          BottomNavigationBarItem(title: Text('Add'), icon: Icon(Icons.add))
        ],
        onTap: (int index) {
          print(index.toString());
        },
      ),
      endDrawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('marchforth Technologies'),
              accountEmail: Text('info@marchforth.in'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('M4th'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('M'),
                )
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.brown,
    );
  }
}
