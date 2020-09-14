import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

import 'src/FluentAppBar.dart';
import 'src/FluentChipView.dart';
import 'src/FluentDrawer.dart';
import 'src/FluentListItemView.dart';
import 'src/FluentPopUpMenu.dart';
import 'src/FlutterAvatarView.dart';
import 'src/FlutterBottomNavigation.dart';
import 'src/FlutterBottomSheet.dart';
import 'src/FlutterButton.dart';
import 'src/FluentCalender.dart';
import 'src/PersonaListView.dart';
import 'src/FluentProgress.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sonar cubeDemo',
      debugShowCheckedModeBanner: false,
      theme: FluentThemeData.lightTheme(accentColor: AccentColor.orangeAccent),
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
    'PersonaListView',
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
                  case 8:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentListItemView(),
                      ),
                    );
                    break;
                  case 9:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentCalender(),
                      ),
                    );
                    break;
                  case 10:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentChipView(),
                      ),
                    );
                    break;
                  case 11:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonaListView(),
                      ),
                    );
                    break;
                  case 12:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentPopUpMenu(),
                      ),
                    );
                    break;
                  case 13:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FluentProgress(),
                      ),
                    );
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
    );
  }
}
