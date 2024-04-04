import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/animation/animation_cubit.dart';
import 'package:game/blocs/riddle_bloc/riddle_bloc.dart';
import 'package:game/home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => AnimationCubit()),
        BlocProvider(
          create: (context) => RiddleBloc(context.read<AnimationCubit>()),
        ),
      ],
      child: MaterialApp(
        home: HomeWidget(),
        ),
    );
  }
}
