// http request
import 'package:dio/dio.dart';

// Models
import 'package:hw_manage/models/user.dart';

// json
import 'dart:convert';

/// More examples see https://github.com/flutterchina/dio/tree/master/example
Future<List> get_user_list() async {
  var dio = Dio();
  // dio.options.headers['Access-Control-Allow-Origin'] = '*';
  // print('Requesting...');
  final response = await dio.post('http://localhost:30000/user/list',
      data: {'apikey': 'Asd123123'}).catchError((e) {
    print(e);
  });
  // print(response.data);
  // print(response.data);
  return response.data;
}

Future<List> get_user_list_model() async {
  List userList = await get_user_list();
  List userModelList = [];
  Map user;
  for (user in userList) {
    // print(user);
    userModelList.add(User.fromMap(user));
  }
  return userModelList;
}
