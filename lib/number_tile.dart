import 'package:flutter/material.dart';

class NumberTile extends StatelessWidget {
  const NumberTile({required this.number});
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), border: Border.all(color: Colors.black), color: Color.fromARGB(255, 71, 140, 84)),
      height: 100,
      width: 100,
      child: Align(
        alignment: const Alignment(0,0),
        child: Text(
          '$number',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
        )
      )
    );
  }
}
