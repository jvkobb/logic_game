import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final int? number;
  const Tile({this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          child: Center(
            child: number == null ? Text('') :  Text('$number'),
          ),
          decoration: BoxDecoration(border: Border.all()),
        ),
      ),
    );
  }
}
