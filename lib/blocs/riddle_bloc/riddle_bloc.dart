import 'package:bloc/bloc.dart';
import 'package:game/blocs/animation/animation_cubit.dart';
import 'package:game/riddle_model.dart';
import 'package:game/riddles.dart';

part './riddle_event.dart';
part './riddle_state.dart';

class RiddleBloc extends Bloc<RiddleEvent, RiddleState> {
  final AnimationCubit animationCubit;
  RiddleBloc(this.animationCubit) : super(RiddleState(riddles, null)) {
    late Riddle currentRiddle;

    on<StartGame>(
      (event, emit) {
        currentRiddle = riddles[event.index];
        emit(RiddleState(riddles, Status.onGoing));
      },
    );

    on<CheckAnswer>((event, emit) {
      if (currentRiddle.solution == event.guessNumber) {
        int index =
            currentRiddle.numbers.indexWhere((element) => element == null);
        currentRiddle.numbers[index] = event.guessNumber;
        emit(RiddleState(riddles, Status.successed));
      } else {
        animationCubit.shake();
        emit(RiddleState(riddles, Status.failed));
      }
    });

    // on<GetNewRiddle>(
    //   (event, emit) {
    //     if (riddles.every((element) => element.isCompleted == true)) {
    //       print('check');
    //       emit(RiddleState(null, Status.completed));
    //     } else {
    //       attemptsCubit.resetAttempts();
    //       final newRiddle =
    //           riddles.firstWhere((element) => element.isCompleted == false);
    //       emit(RiddleState(newRiddle, Status.onGoing));
    //     }
    //   },
    // );
    // on<TimeUp>(
    //   (event, emit) => emit(RiddleState(state.riddle, Status.failed)),
    // );
    // on<TryAgain>((event, emit) {
    //   emit(RiddleState(state.riddle, Status.onGoing));
    // });
  }
}
