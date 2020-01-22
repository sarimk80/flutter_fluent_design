import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FlutterBottomSheet extends StatefulWidget {
  @override
  _FlutterBottomSheetState createState() => _FlutterBottomSheetState();
}

class _FlutterBottomSheetState extends State<FlutterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'Bottom Sheet',
        fluentBody: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 20,
            direction: Axis.vertical,
            children: <Widget>[
              Text(
                'BottomSheet',
                style: Theme.of(context).textTheme.display3,
              ),
              Button(
                width: 200,
                text: 'Show with Single Line Item',
                ontap: () {
                  FluentBottomSheet.bottomSheet(
                    context,
                    listTile: [
                      ListTile(
                        leading: Icon(FluentIcons.flag),
                        title: Text('Flag'),
                      ),
                      ListTile(
                        leading: Icon(FluentIcons.forward),
                        title: Text('Forward'),
                      ),
                      ListTile(
                        leading: Icon(FluentIcons.share),
                        title: Text('Share'),
                      ),
                      ListTile(
                        leading: Icon(FluentIcons.delete),
                        title: Text('Delete'),
                      ),
                    ],
                  );
                },
              ),
              Button(
                width: 200,
                text: 'Show with Double Line Item',
                ontap: () {
                  FluentBottomSheet.bottomSheet(context,
                      listTile: [
                        ListTile(
                          leading: Icon(FluentIcons.camera),
                          title: Text('Camera'),
                          subtitle: Text('Take photo with camera'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.photo_2),
                          title: Text('Photo'),
                          subtitle: Text('Photo gallery'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.video),
                          title: Text('Video'),
                          subtitle: Text('Play your video'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.manage),
                          title: Text('Manage'),
                          subtitle: Text('Manage your files'),
                        ),
                      ],
                      height: 280);
                },
              ),
              Button(
                width: 210,
                text: 'Show with Single Line Header',
                ontap: () {
                  FluentBottomSheet.bottomSheet(context,
                      listTile: [
                        ListTile(
                          title: Text(
                            'Actions',
                            style: Theme.of(context)
                                .textTheme
                                .subhead
                                .copyWith(color: Colors.black),
                          ),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.camera),
                          title: Text('Camera'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.photo_2),
                          title: Text('Photo'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.video),
                          title: Text('Video'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.manage),
                          title: Text('Manage'),
                        ),
                      ],
                      height: 280);
                },
              ),
              Button(
                width: 300,
                text: 'Show with Double Line Header and Divider',
                ontap: () {
                  FluentBottomSheet.bottomSheet(context,
                      listTile: [
                        ListTile(
                          leading: Icon(
                            FluentIcons.folder_open,
                            size: 30,
                          ),
                          title: Text(
                            'Folder',
                            style: Theme.of(context).textTheme.display1,
                          ),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.camera),
                          title: Text('Camera'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.photo_2),
                          title: Text('Photo'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.video),
                          title: Text('Video'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.manage),
                          title: Text('Manage'),
                        ),
                      ],
                      height: 280);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
