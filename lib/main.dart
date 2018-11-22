import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(title: 'Hell world'),
      theme: new ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        accentColor: Colors.red
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  String text = "text change here";
  void buttonClick(){
    setState((){
      if(text.contains("text change here")){
        text = "new text";
      }else{
        text = "text change here";
      }
    });
  }


  Widget bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           new Text(text, style: new TextStyle( fontSize: 16.0)),
           new RaisedButton(
             child: new Text("Click me", style: new TextStyle(color: Colors.white),)
               ,onPressed: buttonClick, color: Colors.redAccent,),
         ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: bodyWidget(),
    );
  }
}
