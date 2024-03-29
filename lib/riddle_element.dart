import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/riddle_bloc/riddle_bloc.dart';
import 'package:game/details_screen.dart';

class RiddleElement extends StatelessWidget {
  const RiddleElement(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RiddleBloc, RiddleState>(
      builder: (context, state) {
        final currrentRiddle = state.riddles[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailScreen(currrentRiddle),
            ));
            context.read<RiddleBloc>().add(StartGame(index));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: currrentRiddle.isCompleted == true
                        ? const [
                            Color.fromARGB(255, 122, 188, 124),
                            Color.fromARGB(255, 128, 137, 137)
                          ]
                        : const [
                            Color.fromARGB(255, 91, 89, 89),
                            Color.fromARGB(255, 92, 91, 91)
                          ]),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Align(
                alignment: const Alignment(0, 0),
                child: Text(
                  'Level ${index + 1}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20.0),
                )),
          ),
        );
      },
    );
  }
}
