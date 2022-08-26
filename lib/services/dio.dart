import 'package:dio/dio.dart';
import '../config/url.dart' as url;

void getUsers() async {
  try {
    var response = await Dio().get(url.usersEndpoint);
    print(response);
  } catch (e) {
    print(e);
  }
}
