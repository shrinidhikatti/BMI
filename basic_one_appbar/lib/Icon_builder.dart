import 'package:flutter/material.dart';
import 'constatnt.dart';
class IconBuilder extends StatelessWidget {
  IconBuilder({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 75,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle
        )
      ],
    );
  }
}
