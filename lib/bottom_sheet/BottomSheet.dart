import 'package:flutter/material.dart';

///[List of widgets is required] which can be any things but it is
///recommeded to use [ListTile]

/*
  FluentBottomSheet.bottomSheet(
              context,
              listTile: [
                ListTile(
                  leading: Icon(FluentIcons.delete),
                  title: Text('Delete',style: Theme.of(context).textTheme.subhead,),
                ),
                 ListTile(
                  leading: Icon(FluentIcons.device),
                  title: Text('Devices',style: Theme.of(context).textTheme.subhead,),
                ),
                 ListTile(
                  leading: Icon(FluentIcons.print),
                  title: Text('Printer',style: Theme.of(context).textTheme.subhead,),
                ),
              ],
            );
*/

class FluentBottomSheet {
  static void bottomSheet(BuildContext context,
      {@required List<Widget> listTile,double height=250}) {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      elevation: Theme.of(context).bottomAppBarTheme.elevation,
      context: context,
      builder: (context) {
        return Container(
          height: height,
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: listTile)
                .toList(),
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }
}
