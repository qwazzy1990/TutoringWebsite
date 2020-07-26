import 'package:flutter/material.dart';

void main() {
  //runApp runs the application
  runApp(App());
}

//CoolApp is the main application. Extend a stateless widget
class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turing Learning Academy',
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
        primarySwatch: Colors.blueGrey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: "Hello World"),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;
  HomePage({Key key, this.title}) : super(key: key);

  void printTitle()
  {
    print(this.title);
  }
  @override
  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //the widget refers to the HomePage class
        title: Align(alignment: Alignment.center, // Align however you like (i.e .centerRight, centerLeft)
          child: Text(widget.title),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 500.0),
              child: GestureDetector(
                onTap: () {
                  widget.printTitle();
                },
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
    );
  }
}
