import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'animation_state.dart';

class AnimationCubit extends Cubit<AnimationState> {
  AnimationCubit() : super(AnimationState());

  void init(AnimationController animationController) {
    state.animationController = animationController;
  }

  void shake() {
    if (state.animationController!.status == AnimationStatus.completed) {
    state.animationController!.reset();
    state.animationController!.forward();
    } else {
      state.animationController!.forward();
    }
  }
}
