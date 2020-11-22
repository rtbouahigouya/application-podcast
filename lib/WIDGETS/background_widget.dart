import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  final Widget child;
  BackgroundColor({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: child,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.yellow, Colors.green],
        ),
      ),
    );
  }
}
