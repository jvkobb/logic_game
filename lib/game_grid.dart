import 'package:flutter/material.dart';
import 'package:game/empty_tile.dart';
import 'package:game/number_tile.dart';
import 'package:game/riddle_model.dart';

class GameGrid extends StatelessWidget {
  const GameGrid({required this.riddle});
  final Riddle riddle;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: riddle.numbers.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
        ),
        itemBuilder: (context, index) {
          return riddle.numbers[index] != null
              ? NumberTile(number: riddle.numbers[index]!)
              : const EmptyTile();
        });
  }
}
