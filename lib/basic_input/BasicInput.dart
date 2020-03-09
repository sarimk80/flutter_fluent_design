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

  const Button({
    Key key,
    @required this.text,
    @required this.ontap,
    this.disable = false,
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return widget.disable
        ? Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[300],
            //width: widget.width,
            //height: 40,
            child: Text(
              widget.text,
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: Colors.black26),
            ),
          )
        : Material(
            color: Theme.of(context).accentColor,
            child: InkWell(
              splashColor: Theme.of(context).accentColor,
              onTap: widget.ontap,
              child: Container(
                padding: EdgeInsets.all(8),
                constraints:
                    BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                // width: widget.width,
                //height: 40,
                child: Text(
                  widget.text,
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          );
  }
}
