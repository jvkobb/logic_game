import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/animation/animation_cubit.dart';
import 'package:game/blocs/keyboard_cubit/keyboard_cubit.dart';

class EmptyTile extends StatefulWidget {
  EmptyTile({super.key});

  @override
  State<EmptyTile> createState() => _EmptyTileState();
}

class _EmptyTileState extends State<EmptyTile>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    AnimationController animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    context.read<AnimationCubit>().init(animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _animationController =
        context.watch<AnimationCubit>().state.animationController!;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        final sineValue = sin(4 * 2 * pi * _animationController.value);
        return Transform.translate(
          offset: Offset(sineValue, 0),
          child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.black),
                  color: const Color.fromARGB(255, 235, 229, 174)),
              height: 100,
              width: 100,
              child: Align(
                  alignment: const Alignment(0, 0),
                  child: BlocBuilder<KeyboardCubit, KeyboardState>(
                    builder: (context, state) {
                      return Text(
                        '${state.passedNumber ?? ''}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      );
                    },
                  ))),
        );
      },
    );
  }
}
