import 'package:fluent/src/FluentDrawer.dart';
import 'package:fluent/src/FlutterBottomNavigation.dart';
import 'package:fluent/src/FlutterBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

import 'src/FluentAppBar.dart';
import 'src/FlutterAvatarView.dart';
import 'src/FlutterButton.dart';
import 'src/FluentCalender.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: FluentThemeData.lightTheme(accentColor: AccentColor.greenAccent),
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
  List<String> titles = [
    'AppBarLayout',
    'AvatarView',
    'ButtonInput',
    'BottomNavigation',
    'BottomSheet',
    'CalenderView',
    'DateTimePicker',
    'Drawer',
    'ListItemView',
    'PeoplePickerView',
    'PersonaChipView',
    'PersonaView',
    'PopupMenu',
    'Progress',
    'Snackbar',
    'TemplateView',
    'Tooltip',
    'Typography'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: FluentSnackBar.globalKey,
      body: AppBarLayout(
        searchBar: true,
        snap: true,
        title: 'App Bar Title',
        fluentBody: ListView.separated(
          padding: EdgeInsets.all(0),
          separatorBuilder: (context, index) {
            return Divider(
              height: 0.5,
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentAppBar(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlutterAvatarView(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlutterButton(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlutterBottomNavigation(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlutterBottomSheet(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentCalender(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentCalender(),
                      ),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentDrawer(),
                      ),
                    );
                    break;
                }
              },
              title: Text(
                titles[index],
                style: Theme.of(context).textTheme.subhead,
              ),
            );
          },
          itemCount: titles.length,
        ),
      ),
      // bottomNavigationBar: BottomNavigation(
      //   currentIndex: 0,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(FluentIcons.home),
      //       title: Text('Home'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FluentIcons.guest_user),
      //       title: Text('User'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FluentIcons.settings),
      //       title: Text('Setting'),
      //     ),
      //   ],
      // ),
    );
  }
}
