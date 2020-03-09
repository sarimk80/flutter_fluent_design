import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FluentDrawer extends StatefulWidget {
  @override
  _FluentDrawerState createState() => _FluentDrawerState();
}

class _FluentDrawerState extends State<FluentDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'Drawer',
        fluentBody: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            direction: Axis.vertical,
            children: <Widget>[
              Button(
              
                text: 'Show Drawer',
                ontap: () {
                  FluentBottomSheet.bottomSheet(context,
                      listTile: [
                        ListTile(
                          title: Text(
                            'Company',
                            style: Theme.of(context).textTheme.subhead,
                          ),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.cyan,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('Manager'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.pink,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('Researcher'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.blue,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('Intern'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.greenAccent,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('UI designer'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.blue,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('Intern'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.greenAccent,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('UI designer'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            child: Center(
                              child: Text('SA'),
                            ),
                            backgroundColor: Colors.amber,
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('Intern'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.greenAccent,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('UI designer'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.blue,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('Intern'),
                        ),
                        ListTile(
                          leading: AvatarView(
                            backgroundColor: Colors.orange,
                            child: Center(
                              child: Text('SA'),
                            ),
                          ),
                          title: Text('Lorem Apsam'),
                          subtitle: Text('UI designer'),
                        ),
                      ],
                      height: 500);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
