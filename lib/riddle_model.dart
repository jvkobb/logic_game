class Riddle {
  List<int?> numbers;
  int solution;
  bool isCompleted = false;
  int timeLeft;
  int attempts; 
  Riddle({
    required this.numbers,
    required this.solution,
    required this.timeLeft,
    required this.attempts
  });
}
