class Riddle {
  List<int?> numbers;
  int solution;
  int timeLeft;
  int attempts;
  int id;
  bool get isDone => numbers.every((element) => element != null);
  Riddle(
      {required this.numbers,
      required this.solution,
      required this.timeLeft,
      required this.attempts,
      required this.id});
}
