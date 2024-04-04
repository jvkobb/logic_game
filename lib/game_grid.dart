import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/animation/animation_cubit.dart';
import 'package:game/blocs/riddle_bloc/riddle_bloc.dart';
import 'package:game/empty_tile.dart';
import 'package:game/number_tile.dart';
import 'package:game/riddle_model.dart';

class GameGrid extends StatelessWidget {
  const GameGrid({required this.riddle});
  final Riddle riddle;

  @override
  Widget build(BuildContext context) {
    context.watch<RiddleBloc>();
    return GridView.builder(
        itemCount: riddle.numbers.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
        ),
        itemBuilder: (context, index) {
          return riddle.numbers[index] != null
              ? NumberTile(number: riddle.numbers[index]!)
              : EmptyTile();
        });
  }
}
