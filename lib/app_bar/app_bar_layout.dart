import 'package:fluent_design/icon_data/Fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../fluent_design.dart';

///EXAMPLE OF [Fluent App Bar]

/// Change the value of [snap] and [pinned] between [true] or [false]
/// to have different app bar result
/// Appbar [title] and [fluentBody] is required

/*
   
   Scaffold(
      key: FluentSnackBar.globalKey,
      body: AppBarLayout(
        title: 'App Bar Title',
        searchBar: true,
        snap: true,
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
        fluentBody: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){},
              leading: Text(
                index.toString(),
              ),
              title: Text("Fluent $index"),
            );
          },
        ),
      ),
    );

*/

class AppBarLayout extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> action;
  final bool searchBar;
  final Widget leading;
  final bool pinned;
  final bool snap;
  final Widget fluentBody;

  AppBarLayout(
      {@required this.title,
      @required this.fluentBody,
      this.action,
      this.searchBar = false,
      this.leading,
      this.pinned = true,
      this.snap = false});

  @override
  _AppBarLayoutState createState() => _AppBarLayoutState();

  @override
  Size get preferredSize =>
      Size(AppBar().preferredSize.width, AppBar().preferredSize.height);
}

class _AppBarLayoutState extends State<AppBarLayout> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        statusBarIconBrightness: Theme.of(context).brightness));
    return NestedScrollView(
      physics: NeverScrollableScrollPhysics(),
      headerSliverBuilder: (context, expanded) {
        return [
          SliverAppBar(
            elevation: Theme.of(context).appBarTheme.elevation,
            forceElevated: true,
            pinned: widget.pinned,
            floating: widget.snap,
            snap: widget.snap,
            leading: widget.leading,
            title: Text(
              widget.title,
              style: Theme.of(context).textTheme.title,
            ),
            actions: widget.action,
            backgroundColor: Theme.of(context).primaryColor,
            bottom: widget.searchBar
                ? PreferredSize(
                    preferredSize: widget.preferredSize,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          backgroundBlendMode: BlendMode.multiply,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 40,
                        width: MediaQuery.of(context).size.width - 10,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8),
                              ),
                              Icon(
                                FluentIcons.zoom,
                                color: Theme.of(context).primaryIconTheme.color,
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                              ),
                              Text(
                                'Search',
                                style: Theme.of(context).textTheme.subtitle,
                              )
                            ],
                          ),
                          // TextField(
                          //   decoration: InputDecoration(
                          //     labelText: 'Search',
                          //     labelStyle: Theme.of(context).textTheme.subtitle,
                          //     disabledBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(
                          //           width: 0,
                          //           color: Theme.of(context).primaryColor),
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(
                          //           width: 0,
                          //           color: Theme.of(context).primaryColor),
                          //     ),
                          //     enabledBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(
                          //           width: 0,
                          //           color: Theme.of(context).primaryColor),
                          //     ),
                          //     prefixIcon: Icon(
                          //       FluentIcons.zoom,
                          //       size: Theme.of(context).iconTheme.size,
                          //       color: Theme.of(context).iconTheme.color,
                          //     ),
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                  )
                : PreferredSize(
                    preferredSize: Size(0, 0),
                    child: Container(),
                  ),
          ),
        ];
      },
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: widget.fluentBody),
    );
  }
}
