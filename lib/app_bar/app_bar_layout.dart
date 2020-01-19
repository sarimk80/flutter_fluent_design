import 'package:fluent_design/icon_data/Fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLayout extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> action;
  final bool searchBar;
  final Widget leading;

  AppBarLayout(
      {@required this.title,
      this.action,
      this.searchBar = false,
      this.leading});

  @override
  _AppBarLayoutState createState() => _AppBarLayoutState();

  @override
  Size get preferredSize => Size(AppBar().preferredSize.width,
      AppBar().preferredSize.height + AppBar().preferredSize.height + 18);
}

class _AppBarLayoutState extends State<AppBarLayout> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        statusBarIconBrightness: Theme.of(context).brightness));

    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            AppBar(
                backgroundColor: Theme.of(context).primaryColor,
                title: Text(
                  widget.title,
                  style: Theme.of(context).textTheme.title,
                ),
                leading: widget.leading,
                actions: widget.action),
            widget.searchBar
                ? AppBar(
                    backgroundColor: Theme.of(context).primaryColor,
                    elevation: 0.5,
                    centerTitle: true,
                    title: Container(
                      width: MediaQuery.of(context).size.width - 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FluentIcons.zoom,
                              size: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                            ),
                            Text(
                              "Search",
                              style: Theme.of(context).textTheme.subtitle,
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        backgroundBlendMode: BlendMode.multiply,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )
                : Container(
                    width: 0,
                    height: 0,
                  ),
//            Container(
//              width: MediaQuery.of(context).size.width,
//              color: Theme.of(context).primaryColor,
//              child: Padding(
//                padding: const EdgeInsets.all(5.0),
//                child: DefaultTabController(
//                  length: 2,
//                  child: TabBar(
//                    indicatorWeight: 0,
//                    indicator: BoxDecoration(
//                      border: Border.all(
//                          color: Theme.of(context).primaryColor, width: 5),
//                      color: Colors.white,
//                      borderRadius: BorderRadius.all(
//                        Radius.circular(50),
//                      ),
//                    ),
//                    isScrollable: true,
//                    unselectedLabelColor: Colors.white,
//                    labelColor: Theme.of(context).primaryColor,
//                    tabs: [
//                      Tab(
//                        child: Text("focused"),
//                      ),
//                      Tab(
//                        child: Text(
//                          "Other",
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
