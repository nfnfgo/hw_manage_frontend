import 'dart:convert';

class User {
  int? id;
  String? name;
  int? point;
  String? jsonStr;

  User(this.id, [this.name, this.point, this.jsonStr]);

  User.fromJsonStr(String str) {
    jsonStr = str;
    Map infoList = json.decode(str);
    id = infoList['id'];
    name = infoList['name'];
    point = infoList['point'];
  }

  User.fromMap(Map userInfoMap) {
    id = userInfoMap['id'];
    name = userInfoMap['name'];
    point = userInfoMap['point'];
  }
}
