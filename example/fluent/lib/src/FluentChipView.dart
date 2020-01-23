import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FluentChipView extends StatefulWidget {
  @override
  _FluentChipViewState createState() => _FluentChipViewState();
}

class _FluentChipViewState extends State<FluentChipView> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'Chip View',
        fluentBody: Center(
          child: FilterChip(
            showCheckmark: true,
            avatar: Padding(
              padding: const EdgeInsets.all(2.0),
              child: AvatarView(
                backgroundColor: Colors.green,
                child: Text('SA',style: Theme.of(context).textTheme.caption,),
                radius: 15,
              ),
            ),
            selected: isSelected,
            label: Text('user name'),
            labelStyle: Theme.of(context)
                .chipTheme
                .labelStyle
                .copyWith(color: isSelected ? Colors.white : Colors.black),
            onSelected: (bool value) {
              setState(() {
                isSelected = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
