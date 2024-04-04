part of './riddle_bloc.dart';

enum Status { onGoing, successed, failed }

final class RiddleState {
  List<Riddle> riddles;
  Status? status;
  RiddleState(this.riddles, this.status);
}
