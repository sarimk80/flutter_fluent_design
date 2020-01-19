import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: FluentThemeData.blueTheme(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      key: FluentSnackBar.globalKey,
      appBar: AppBarLayout(
        title: 'App Bar Title',
        searchBar: true,
        action: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Icon(
            FluentIcons.all_apps,
            size: Theme.of(context).iconTheme.size,
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Icon(FluentIcons.add, size: Theme.of(context).iconTheme.size),
          Padding(
            padding: EdgeInsets.all(8),
          ),
        ],
      ),
      body: Center(),
    );
  }
}
