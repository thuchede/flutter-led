import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _doNothing() {
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: <Widget>[
          ListTile(
            leading: new Container(
              width: 50,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  colors: [new Color.fromRGBO(255, 255, 0, 1), new Color.fromRGBO(188, 178, 52, 1)],
                  stops: [0.3, 1],
                ),
                boxShadow: [
                  new BoxShadow(color: new Color.fromRGBO(0, 0, 0, 0.2), offset: new Offset(0.0, -1.0), blurRadius: 7.0, spreadRadius: 1.0),
                  new BoxShadow(color: new Color.fromRGBO(255, 255, 0, 1), offset: new Offset(0.0, 2.0), blurRadius: 12.0, spreadRadius: 0.0)
                ],
                shape: BoxShape.circle,
              ),
            ),
            title: Text('https://twitter.com'),
          ),
          ListTile(
            leading: new Container(
              width: 50,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  colors: [new Color.fromRGBO(171, 255, 0, 1), new Color.fromRGBO(98, 171, 51, 1)],
                  stops: [0.3, 1],
                ),
                boxShadow: [
                  new BoxShadow(color: new Color.fromRGBO(0, 0, 0, 0.2), offset: new Offset(0.0, -1.0), blurRadius: 7.0, spreadRadius: 1.0),
                  new BoxShadow(color: new Color.fromRGBO(137, 255, 0, 1), offset: new Offset(0.0, 2.0), blurRadius: 12.0, spreadRadius: 0.0)
                ],
                shape: BoxShape.circle,
              ),
            ),
            title: Text('https://www.google.fr'),
          ),
          ListTile(
            leading: new Container(
              width: 50,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                    colors: [new Color.fromRGBO(255, 0, 0, 1), new Color.fromRGBO(168, 19, 19, 1)], // new Color.fromRGBO(166, 16, 24, 1)],
                    stops: [0.3, 1],
                ),
                boxShadow: [
                  new BoxShadow(color: new Color.fromRGBO(0, 0, 0, 0.2), offset: new Offset(0.0, -1.0), blurRadius: 7.0, spreadRadius: 1.0),
                  new BoxShadow(color: new Color.fromRGBO(255, 0, 0, 1), offset: new Offset(0.0, 2.0), blurRadius: 12.0, spreadRadius: 0.0)
                ],
                shape: BoxShape.circle,
              ),
            ),
            title: Text('https://dev.to'),
          ),
          ListTile(
            leading: new Container(
              width: 50,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  colors: [new Color.fromRGBO(36, 224, 255, 1), new Color.fromRGBO(27, 116, 177, 1)],
                  stops: [0.3, 1],
                ),
                boxShadow: [
                  new BoxShadow(color: new Color.fromRGBO(0, 0, 0, 0.2), offset: new Offset(0.0, -1.0), blurRadius: 7.0, spreadRadius: 1.0),
                  new BoxShadow(color: new Color.fromRGBO(63, 140, 255, 1), offset: new Offset(0.0, 2.0), blurRadius: 12.0, spreadRadius: 0.0)
                ],
                shape: BoxShape.circle,
              ),
            ),
            title: Text('http://localhost:8080'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _doNothing,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
