import 'package:bloc/bloc.dart';
import 'package:game/riddle_model.dart';
import 'package:game/riddles.dart';

part './riddle_event.dart';
part './riddle_state.dart';

// part 'riddle_state.dart';

class RiddleBloc extends Bloc<RiddleEvent, RiddleState> {
  RiddleBloc() : super(RiddleState(riddles)) {
    late final Riddle currentRiddle;
    on<StartGame>(
      (event, emit) {
        currentRiddle = riddles[event.index];
        print(currentRiddle.numbers);
      },
    );

    on<CheckAnswer>((event, emit) {
      if (currentRiddle.solution == event.guessNumber) {
        print('you did it!');
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
