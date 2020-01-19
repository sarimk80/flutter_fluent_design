import 'package:flutter/material.dart';

class FluentBottomSheet {
  static void bottomSheet(BuildContext context,
      {@required List<Widget> listTile}) {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      elevation: Theme.of(context).bottomAppBarTheme.elevation,
      context: context,
      builder: (context) {
        return Container(
          height: 250,
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
