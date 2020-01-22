import 'package:flutter/material.dart';

/// [ontap] and [text] is required
/*

  fluentBody: Button(
          ontap: () {},
          text: 'SnackBar',
        ),

*/

class Button extends StatefulWidget {
  final String text;
  final Function() ontap;
  final bool disable;
  final double width;

  const Button(
      {Key key,
      @required this.text,
      @required this.ontap,
      this.disable = false,
      this.width=90})
      : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return widget.disable
        ? Container(
            color: Colors.grey[300],
            width: widget.width,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  widget.text,
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Colors.black26),
                ),
              ),
            ),
          )
        : Material(
            color: Theme.of(context).accentColor,
            child: InkWell(
              splashColor: Theme.of(context).accentColor,
              onTap: widget.ontap,
              child: Container(
                width: widget.width,
                height: 40,
                child: Center(
                  child: Text(
                    widget.text,
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ),
          );
  }
}
