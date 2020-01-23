import 'package:fluent_design/avatar_view/AvatarView.dart';
import 'package:flutter/material.dart';

enum Status { basic, error }

class PersonaChipView extends StatefulWidget {
  final bool isSelected;
  final Function(bool value) onSelected;
  final Status status;

  const PersonaChipView(
      {Key key,
      @required this.isSelected,
      @required this.onSelected,
      this.status = Status.basic})
      : super(key: key);

  @override
  _PersonaChipViewState createState() => _PersonaChipViewState();
}

class _PersonaChipViewState extends State<PersonaChipView> {
  @override
  Widget build(BuildContext context) {
    if (Status.basic == widget.status) {
      return FilterChip(
        showCheckmark: true,
        checkmarkColor: Colors.white,
        selected: widget.isSelected,
        label: Text('Mauricio August'),
        labelStyle: Theme.of(context)
            .chipTheme
            .labelStyle
            .copyWith(color: widget.isSelected ? Colors.white : Colors.black),
        onSelected: widget.onSelected,
      );
    }
    if (Status.error == widget.status) {
      return FilterChip(
        avatar: AvatarView(
          radius: 12,
          backgroundColor: Colors.black.withOpacity(0.5),
          child: Center(
            child: Text(
              'AB',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
        selectedColor: Colors.red,
        showCheckmark: false,
        checkmarkColor: Colors.white,
        selected: widget.isSelected,
        label: Text('Mauricio August'),
        labelStyle: Theme.of(context)
            .chipTheme
            .labelStyle
            .copyWith(color: widget.isSelected ? Colors.white : Colors.black),
        onSelected: widget.onSelected,
      );
    }
  }
}
