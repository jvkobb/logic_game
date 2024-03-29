part of './riddle_bloc.dart';

final class RiddleEvent {}

final class CheckAnswer extends RiddleEvent {
  int guessNumber;
  CheckAnswer(this.guessNumber);
}

final class GetNewRiddle extends RiddleEvent {
  GetNewRiddle();
}

final class StartGame extends RiddleEvent {
  int index;
  StartGame(this.index);
}

// final class TimeUp extends RiddleEvent {
//   TimeUp();
// }

// final class TryAgain extends RiddleEvent {
//   TryAgain();
// }

