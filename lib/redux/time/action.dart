class FetchTimeAction {
  final String _location;
  final String _time;
  final String type = "FetchTimeAction";
  String get location => _location;
  String get time => _time;

  FetchTimeAction(this._location, this._time);
}
