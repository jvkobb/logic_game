import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/keyboard_cubit/keyboard_cubit.dart';


class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 200,
      width: 200,
      child: GridView.builder(
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 80),
          itemBuilder: (context, index) {
            int value = index + 1;
            return InkWell(
              onTap: () => context.read<KeyboardCubit>().passNumber(value),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(12),
                height: 30,
                width: 30,
                child: Text('$value'),
              ),
            );
          }),
    );
  }
}
