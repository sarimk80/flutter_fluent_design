import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class PersonaListView extends StatefulWidget {
  @override
  _PersonaListViewState createState() => _PersonaListViewState();
}

class _PersonaListViewState extends State<PersonaListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'PersonaListView',
        fluentBody: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
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
        ),
      ),
    );
  }
}
