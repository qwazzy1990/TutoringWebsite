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
      //home:HomePage(title: "Turing Complete Academy")
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // @override
  // Header({Key key, this.title}) : super(key: key);

  // @override
  String dropDownValue = "Green";
  MyStatefulWidget widget;
  Widget build(BuildContext context) {
    return Container(
     // decoration: BoxDecoration(
          //image: DecorationImage(
              //image: AssetImage("download.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("TLA", style: TextStyle(fontStyle: FontStyle.italic)),
            backgroundColor: Colors.blueGrey,
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child:MyStatefulWidget()
              )
            ],
          ),
          //body: Center(child: my)
          ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}