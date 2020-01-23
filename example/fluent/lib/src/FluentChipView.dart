import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FluentChipView extends StatefulWidget {
  @override
  _FluentChipViewState createState() => _FluentChipViewState();
}

class _FluentChipViewState extends State<FluentChipView> {
  bool baicSelected = false;
  bool errorSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'Chip View',
        fluentBody: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'In Progress.....',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Center(
              child: PersonaChipView(
                status: Status.error,
                isSelected: baicSelected,
                onSelected: (bool value) {
                  setState(() {
                    baicSelected = value;
                  });
                },
              ),
            ),
            Center(
              child: PersonaChipView(
                status: Status.basic,
                isSelected: errorSelected,
                onSelected: (bool value) {
                  setState(() {
                    errorSelected = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
