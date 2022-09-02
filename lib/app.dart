import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
// import 'services/dio.dart' as dio;
import './pages/main.dart';
import './redux/main.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Main(title: "Flutter Redux Home Page");
  }
}
