import 'package:flutter/material.dart';

/*
 * 
 *  SnackBar with Microsoft Fluent Deign 
 * 
 *  Leading icon size can be 20dp 
 * 
 */
///[Dont forget to provide the key in the scaffold]
///[Custom SnackBar]
/*
    EXAMPLE:

        Scaffold(

           key: FluentSnackBar.globalKey,

           body:(Center
                    child: Button(ontap: () 
                    {
                      FluentSnackBar.fluentCustomSnackBarNoAction(
                      context,
                      content: 'Custom snackbar',
                      duration: Duration(seconds: 2),
                      leading: Icon(
                      FluentIcons.check_box,
                      size: 20,
                      ),
                    );
                  },
              text: 'Snackbar',
            ),
            ),
            )
        )
*/

/// [Normal SnackBar]

/*
  fluentBody: Button(
          ontap: () {
            FluentSnackBar.fluentSnackBar(
              context,
              content: 'SnackBar',
              duration: Duration(seconds: 2),
            );
          },
          text: 'SnackBar',
        ),
*/

class FluentSnackBar {
  static final globalKey = GlobalKey<ScaffoldState>();

  /*
    Simple SnackBar
  */
  static fluentSnackBar(BuildContext context,
      {@required String content, @required Duration duration}) {
    final snackBar = SnackBar(
      duration: duration,
      behavior: SnackBarBehavior.floating,
      content: Text(
        content,
        style: Theme.of(context).textTheme.subtitle,
      ),
    );

    globalKey.currentState.showSnackBar(snackBar);
  }

  /*
    Simple SnackBar with Action
  */
  static fluentSnackBarWithAction(BuildContext context,
      {@required String content,
      @required Duration duration,
      @required String lable,
      @required Function() action}) {
    final snackBar = SnackBar(
      duration: duration,
      behavior: SnackBarBehavior.floating,
      content: Text(content, style: Theme.of(context).textTheme.subtitle),
      action: SnackBarAction(
        label: lable,
        onPressed: action,
      ),
    );

    globalKey.currentState.showSnackBar(snackBar);
  }

/*
    Custom SnackBar with Action
  */
  static fluentCustomSnackBar(BuildContext context,
      {@required String content,
      Duration duration,
      @required Widget leading,
      @required String lable,
      @required Function() action}) {
    final snackBar = SnackBar(
      duration: duration,
      behavior: SnackBarBehavior.floating,
      content: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          leading,
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 5),
          ),
          Text(content, style: Theme.of(context).textTheme.subtitle)
        ],
      ),
      action: SnackBarAction(
        label: lable,
        onPressed: action,
      ),
    );

    globalKey.currentState.showSnackBar(snackBar);
  }

  /*
   * Custom SnackBar with no action
   */

  static fluentCustomSnackBarNoAction(BuildContext context,
      {@required String content, Duration duration, @required Widget leading}) {
    final snackBar = SnackBar(
      duration: duration,
      behavior: SnackBarBehavior.floating,
      content: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          leading,
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 5),
          ),
          Text(
            content,
            style: Theme.of(context).textTheme.subtitle,
          )
        ],
      ),
    );

    globalKey.currentState.showSnackBar(snackBar);
  }
}
