import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/keyboard_cubit/keyboard_cubit.dart';

class EmptyTile extends StatelessWidget {
  const EmptyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            )));
  }
}
