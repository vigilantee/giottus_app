import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
// import 'services/dio.dart' as dio;

// One simple action: Increment
enum Actions { Increment }

int counterReducer(int state, dynamic action) {
  return action == Actions.Increment ? state + 1 : state;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final store = Store<int>(counterReducer, initialState: 0);
    return StoreProvider<int>(
        store: store,
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  StoreConnector<int, String>(
                      converter: (store) => store.state.toString(),
                      builder: (context, count) {
                        return Text(
                          '$count',
                          style: Theme.of(context).textTheme.headline4,
                        );
                      }),
                ],
              ),
            ),
            floatingActionButton:
                StoreConnector<int, VoidCallback>(converter: (store) {
              return () => store.dispatch(Actions.Increment);
            }, builder: (context, callback) {
              return FloatingActionButton(
                onPressed: callback,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ); // This trailing comma makes auto-formatting nicer for build methods.
            })));
  }
}
