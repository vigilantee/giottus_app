// import 'action.dart';
// import 'app_state.dart';
// import './time/action.dart';
import './time/reducer.dart';

class AppState {
  final TimeState _timeState;
  TimeState get timeState => _timeState;
  AppState(this._timeState);
  AppState.initialState() : _timeState = new TimeState("_location", "00:00");
}

AppState appStateReducer(AppState state, dynamic action) => new AppState(
      timeReducer(state.timeState, action),
      // searchQueryReducer(state.searchQuery, action)
    );
