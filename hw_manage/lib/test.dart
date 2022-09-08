// Main Program File
import 'package:flutter/material.dart';

// http request
import 'package:dio/dio.dart';

/// More examples see https://github.com/flutterchina/dio/tree/master/example
void main() {
  test();
}

test() async {
  var dio = Dio();
  // dio.options.headers['Access-Control-Allow-Origin'] = '*';
  print('Requesting...');
  final response = await dio
      //.post('http://0.0.0.0:30000/user/list/', data: {'apikey': 'Asd123123'});
      .get('https://baidu.com');
  print(response.statusCode);
}
