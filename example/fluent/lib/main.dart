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
      theme: FluentThemeData.purpleTheme(),
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
      body: AppBarLayout(
        title: 'App Bar Title',
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
        fluentBody: Button(
          ontap: () {
            FluentBottomSheet.bottomSheet(
              context,
              listTile: [
                ListTile(
                  leading: Icon(FluentIcons.delete),
                  title: Text(
                    'Delete',
                    style: Theme.of(context).textTheme.subhead,
                  ),
                ),
                ListTile(
                  leading: Icon(FluentIcons.device),
                  title: Text(
                    'Devices',
                    style: Theme.of(context).textTheme.subhead,
                  ),
                ),
                ListTile(
                  leading: Icon(FluentIcons.print),
                  title: Text(
                    'Printer',
                    style: Theme.of(context).textTheme.subhead,
                  ),
                ),
              ],
            );
          },
          text: 'SnackBar',
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home),
            title: Text('Home'),
          ),
           BottomNavigationBarItem(
            icon: Icon(FluentIcons.guest_user),
            title: Text('User'),
          ),
           BottomNavigationBarItem(
            icon: Icon(FluentIcons.settings),
            title: Text('Setting'),
          ),
        ],
      ),
    );
  }
}
