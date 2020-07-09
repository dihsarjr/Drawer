import 'package:flutter/material.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Drawer'),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.pink,
                child: Column(
                  children: <Widget>[
                    Flexible(
                        fit: FlexFit.tight,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('images/batman.jpg'),
                        )),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('home'),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('home'),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('home'),
              ),
              Divider(
                height: 10,
              ),
            ],
          ),
        ),
        body: Center(),
      ),
    );
  }
}
