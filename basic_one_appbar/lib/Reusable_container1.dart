import 'package:flutter/material.dart';
import 'constatnt.dart';

class ReusableContainer1 extends StatelessWidget {
  ReusableContainer1({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
