import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FluentProgress extends StatelessWidget {
  const FluentProgress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
          title: 'Progress',
          fluentBody: Column(
            children: [
              Text(
                'Circular Progress',
                style: Theme.of(context).textTheme.display2,
              )
            ],
          )),
    );
  }
}
