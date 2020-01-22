import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FlutterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'Button',
        fluentBody: Container(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            direction: Axis.vertical,
            children: <Widget>[
              Text(
                'Button',
                style: Theme.of(context).textTheme.display4,
              ),
              Divider(thickness: 1,height: 2,color: Colors.black,),
              Button(
                text: 'Button',
                ontap: () {},
              ),
              Button(
                disable: true,
                text: 'Disable',
                ontap: () {},
              ),
              BorderlessInput(
                text: 'Borderless',
                ontap: () {},
              ),
              BorderlessInput(
                disable: true,
                text: 'Disable',
                ontap: () {},
              ),
            ],
          ),
        )),
      ),
    );
  }
}
