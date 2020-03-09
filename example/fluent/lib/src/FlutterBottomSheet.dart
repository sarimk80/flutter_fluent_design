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
              BorderlessInput(
               
                text: 'Show with Single Line Item Show with Single Line Item',
                ontap: () {
                  FluentBottomSheet.bottomSheet(
                    context,
                    listTile: [
                      ListTile(
                        leading: Icon(
                          FluentIcons.flag,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        title: Text('Flag'),
                      ),
                      ListTile(
                        leading: Icon(FluentIcons.forward,
                            color: Theme.of(context).iconTheme.color),
                        title: Text('Forward'),
                      ),
                      ListTile(
                        leading: Icon(FluentIcons.share,
                            color: Theme.of(context).iconTheme.color),
                        title: Text('Share'),
                      ),
                      ListTile(
                        leading: Icon(FluentIcons.delete,
                            color: Theme.of(context).iconTheme.color),
                        title: Text('Delete'),
                      ),
                    ],
                  );
                },
              ),
              Button(
                
                text: 'Show with Double Line Item',
                ontap: () {
                  FluentBottomSheet.bottomSheet(context,
                      listTile: [
                        ListTile(
                          leading: Icon(FluentIcons.camera,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Camera'),
                          subtitle: Text('Take photo with camera'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.photo_2,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Photo'),
                          subtitle: Text('Photo gallery'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.video,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Video'),
                          subtitle: Text('Play your video'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.manage,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Manage'),
                          subtitle: Text('Manage your files'),
                        ),
                      ],
                      height: 280);
                },
              ),
              BorderlessInput(
                
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
                                
                          ),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.camera,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Camera'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.photo_2,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Photo'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.video,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Video'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.manage,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Manage'),
                        ),
                      ],
                      height: 280);
                },
              ),
              Button(
               
                text: 'Show with Double Line Header and Divider',
                ontap: () {
                  FluentBottomSheet.bottomSheet(context,
                      listTile: [
                        ListTile(
                          leading: Icon(
                            FluentIcons.folder_open,
                            size: 30,
                            color: Theme.of(context).iconTheme.color
                          ),
                          title: Text(
                            'Folder',
                            style: Theme.of(context).textTheme.display1,
                          ),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.camera,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Camera'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.photo_2,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Photo'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.video,
                              color: Theme.of(context).iconTheme.color),
                          title: Text('Video'),
                        ),
                        ListTile(
                          leading: Icon(FluentIcons.manage,
                              color: Theme.of(context).iconTheme.color),
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
