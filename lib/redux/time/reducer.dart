import './action.dart';

class TimeState {
  final String _location;
  final String _time;

  String get location => _location;
  String get time => _time;

  TimeState(this._location, this._time);

  TimeState.initialState()
      : _location = "",
        _time = "00:00";
}

TimeState timeReducer(TimeState state, dynamic action) {
  print('test....$action');
  switch (action.type) {
    case 'FetchTimeAction':
      print('came here ....02193');
      return TimeState(action.location, action.time);
    default:
      return state;
  }
}
