import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/keyboard_cubit/keyboard_cubit.dart';
import 'package:game/blocs/riddle_bloc/riddle_bloc.dart';
import 'package:game/game_grid.dart';
import 'package:game/keyboard.dart';
import 'package:game/riddle_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(this.riddle);
  final Riddle riddle;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => KeyboardCubit(),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 167, 199, 239),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Text(
                  'TIMER',
                  style: TextStyle(fontSize: 26),
                ),
                margin: const EdgeInsets.only(top: 50),
              ),
              Container(
                  height: 420,
                  margin: const EdgeInsets.only(top: 20),
                  child: GameGrid(
                    riddle: riddle,
                  )),
              const SizedBox(height: 20),
              Expanded(
                child: Row(
                  children: [
                    Align(alignment: Alignment(-1, -0.3), child: Keyboard()),
                    Container(
                      margin: EdgeInsets.only(top: 42),
                      child: Builder(
                        builder: (context) {
                          return Column(
                            children: [
                          IconButton(onPressed: () => context.read<KeyboardCubit>().deleteCharacter(), icon: const Icon(Icons.delete_forever_outlined)),
                          IconButton(onPressed: () => context.read<RiddleBloc>().add(CheckAnswer(context.read<KeyboardCubit>().state.passedNumber!)), icon: const Icon(Icons.done))
                          ],
                          );
                        }
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
