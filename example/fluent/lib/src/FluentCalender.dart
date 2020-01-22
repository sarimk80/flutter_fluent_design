import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FluentCalender extends StatefulWidget {
  @override
  _FluentCalenderState createState() => _FluentCalenderState();
}

class _FluentCalenderState extends State<FluentCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'Calender View',
        fluentBody: Center(
          child: Text('Comming soon',style: Theme.of(context).textTheme.display3,),
        ),
      ),
    );
  }
}
