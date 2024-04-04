import 'package:flutter/material.dart';
import 'package:game/riddle_element.dart';
import 'package:game/riddles.dart';


class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
        itemCount: riddles.length,
        itemBuilder: (context, index) {
          return RiddleElement(index);
        },
      )),
    );
  }
}
