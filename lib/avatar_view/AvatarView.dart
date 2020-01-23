import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  final Color backgroundColor;
  final ImageProvider networkImage;
  final double radius;
  final Widget child;
  final double maxRadius;
  final double minRadius;

  const AvatarView(
      {Key key,
      this.backgroundColor = Colors.blue,
      this.networkImage,
      this.radius,
      this.child,
      this.maxRadius,
      this.minRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: this.child,
      backgroundColor: this.backgroundColor,
      radius: this.radius,
      backgroundImage: this.networkImage,
      maxRadius: this.maxRadius,
      minRadius: this.minRadius,
    );
  }
}
