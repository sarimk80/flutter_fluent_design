import 'package:flutter/material.dart';

class BorderlessInput extends StatefulWidget {
  final String text;
  final Function() ontap;
  final bool disable;

  const BorderlessInput({
    Key key,
    @required this.text,
    @required this.ontap,
    this.disable = false,
  }) : super(key: key);

  @override
  _BorderlessInputState createState() => _BorderlessInputState();
}

class _BorderlessInputState extends State<BorderlessInput> {
  @override
  Widget build(BuildContext context) {
    return widget.disable
        ? Container(
            constraints:
                BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
            child: Text(
              widget.text,
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
          )
        : Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.ontap,
              child: Container(
                constraints:
                    BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                child: Text(
                  widget.text,
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Theme.of(context).accentColor),
                ),
              ),
            ),
          );
  }
}
