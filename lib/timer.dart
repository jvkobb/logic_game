// class MyTimer {
//   Timer? timer;
//   void startCountDown(int secondsLeft) {
//     timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       secondsLeft = secondsLeft - 1;
//       add(Ticked(secondsLeft));
//       if (secondsLeft == 0) {
//         timer.cancel();
//         add(Stop());
//       }
//     });
//   }
// }
