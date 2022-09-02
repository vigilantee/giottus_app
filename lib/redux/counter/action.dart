import './reducer.dart';

class AppState {
  int counter = 0;

  AppState({
    required this.counter,
  });

  AppState.fromAppState(AppState another) {
    counter = another.counter;
  }
}
