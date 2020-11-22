import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final Color activecolor;
  double value, max, min;
  Function onChanged;

  SliderWidget(
      {this.activecolor,
      @required this.max,
      this.min,
      @required this.onChanged,
      @required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Slider(
        activeColor: activecolor,
        value: value,
        max: max,
        min: min,
        onChanged: onChanged,
      ),
    );
  }
}
