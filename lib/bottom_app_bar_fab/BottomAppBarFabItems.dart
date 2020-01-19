import 'package:flutter/material.dart';

class BottomAppBarFabItems extends StatelessWidget {
  final IconData fluentIcon;
  final String label;
  final Function() onPressed;

  BottomAppBarFabItems(
      {@required this.fluentIcon,
      @required this.label,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        onTap: onPressed,
        child: Column(
          children: <Widget>[
            Icon(
              fluentIcon,
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
