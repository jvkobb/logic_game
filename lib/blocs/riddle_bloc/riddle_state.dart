part of './riddle_bloc.dart';

enum Status { noStarted, onGoing, successed, failed, completed }

final class RiddleState {
  List<Riddle> riddles;
  RiddleState(this.riddles);
}
